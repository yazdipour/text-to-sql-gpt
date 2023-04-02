import json
import prompts
import db
import chatgpt
import openai
import os
import mapper
from tqdm import tqdm


def get_relative_path(path): return os.path.join(
    os.path.dirname(__file__), path)


def chat(input, table_schema):
    prompt = prompts.get_system_prompt(schemas=table_schema)
    prompt.append(prompts.get_user_prompt(input))
    reply_content = chatgpt.call_chatgpt(prompt, model=model_name)
    reply_content = reply_content.choices[0].message.content
    return mapper.message_to_sql(reply_content)


def save_string_to_file(resultStr, path):
    with open(get_relative_path(path), "a", encoding="utf-8") as f:
        f.write(resultStr)


with open(get_relative_path('.env')) as f:
    env = dict(line.strip().split('=') for line in f)

openai.api_key = env['OPENAI_API_KEY']
model_name = env['OPENAI_MODEL_NAME']
dataset_name = 'spider'
table_schema_path = get_relative_path(f"../data/{dataset_name}/tables.json")
pred_path = get_relative_path(f"../data/{dataset_name}/predictions.sql")
gold_json_path = get_relative_path(f"../data/{dataset_name}/gold.json")


predictions = []
sum_tokens = 0
sum_costs = 0
with open(gold_json_path, "r") as f:
    gold_json = json.load(f)
    for gold in tqdm(gold_json):
        db_name = gold['db_id']
        table_schema = db.get_table_schemas(table_schema_path, db_name)
        res = chat(gold['question'], table_schema).replace(
            '```sql', '').replace('```', '').strip()
        tokens, cost = chatgpt.cost(res)
        sum_tokens += tokens
        sum_costs += cost
        predictions.append(f'{res}\t{db_name}\n')

save_string_to_file("".join(predictions), pred_path)

print(f"Total tokens: {sum_tokens}")
print(f"Total cost: {sum_costs}")
