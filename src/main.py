import json
import openai
import os
import re
from tqdm import tqdm
import utils.prompts as prompts
import utils.db as db
import utils.chatgpt as chatgpt
import utils.mapper as mapper


def get_relative_path(path): return os.path.join(
    os.path.dirname(__file__), path)


def chat(input, table_schema, db_name):
    prompt = prompts.get_system_prompt(schemas=table_schema, db_name=db_name)
    prompt.append(prompts.get_user_prompt(input))
    reply_content = chatgpt.call_chatgpt(prompt, model=model_name)
    reply_content = reply_content.choices[0].message.content
    return mapper.message_to_sql(reply_content)


def get_failed_golds(file_path) -> list:
    with open(file_path, 'r', encoding='utf-16') as f:
        text = f.read()
    regex = r'eval_err_num:(\d+)\n(\d+) (\w+) pred:'
    matches = re.findall(regex, text, re.DOTALL)
    return [int(item[1]) for item in matches]


def save_string_to_file(resultStr, path):
    with open(get_relative_path(path), "a", encoding="utf-8") as f:
        f.write(resultStr)


with open(get_relative_path('.env')) as f:
    env = dict(line.strip().split('=') for line in f)

openai.api_key = env['OPENAI_API_KEY']
model_name = env['OPENAI_MODEL_NAME']
dataset_name = env['DATASET_NAME']
rerun_failed = env['RERUN_FAILED'] == 'True'
gold_json_path = env['GOLD_JSON_PATH']
previous_eval_breakdown_path = env['PREVIOUS_EVAL_BREAKDOWN_PATH_IF_RERUN']
base_path = f'../data/{dataset_name}'
table_schema_path = get_relative_path(f"{base_path}/tables.json")
gold_json_file_name = gold_json_path.split('/')[-1].split('.')[0]
pred_path = get_relative_path(
    f"{base_path}/predictions-{model_name}-{gold_json_file_name}.sql")
gold_json_path = get_relative_path(f"{base_path}/{gold_json_path}")

print(f"Running {model_name} on {dataset_name} dataset")
print(f"Rerun failed: {rerun_failed}")
print(f"Table schema path: {table_schema_path}")
print(f"Gold json path: {gold_json_path}")
print(f"Prediction path: {pred_path}")
print('-'*50)

predictions = []
sum_tokens = 0
sum_costs = 0

if rerun_failed:
    failed_list = get_failed_golds(
        get_relative_path((f'{base_path}/{previous_eval_breakdown_path}')))

with open(gold_json_path, "r") as f:
    gold_json = json.load(f)
    for i, gold in tqdm(enumerate(gold_json), total=len(gold_json)):
        db_name = gold['db_id']
        table_schema = db.get_table_schemas(table_schema_path, db_name)
        if rerun_failed and i not in failed_list:
            res = gold['query']
        else:
            try:
                res = chat(gold['question'], table_schema, db_name)
                res = res.replace('```sql', '').replace('```', '').strip()
                tokens, cost = chatgpt.cost(res, model=model_name)
                sum_tokens += tokens
                sum_costs += cost
            except Exception as ex:
                res = 'ERROR'
        predictions.append(f'{res}\t{db_name}\n')

save_string_to_file("".join(predictions), pred_path)

print(f"Total tokens: {sum_tokens}")
print(f"Total cost: {sum_costs}")
