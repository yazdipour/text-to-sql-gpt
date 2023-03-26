import json
import prompts
import db
import chatgpt
import openai
import os
import mapper
from tqdm import tqdm

envPath = os.path.join(os.path.dirname(__file__), '.env')
with open(envPath) as f:
    env = dict(line.strip().split('=') for line in f)

openai.api_key = env['OPENAI_API_KEY']
model_name = env['OPENAI_MODEL_NAME']
db_name = 'apache-pig'


def chat(input):
    table_schema = db.get_table_schemas(os.path.join(
        os.path.dirname(__file__), "../data/tables_onlypig.json"))
    prompt = prompts.get_system_prompt(schemas=table_schema)
    prompt.append(prompts.get_user_prompt(input))
    reply_content = chatgpt.call_chatgpt(prompt, model=model_name)
    reply_content = reply_content.choices[0].message.content
    return mapper.message_to_sql(reply_content)


def save_string_to_file(resultStr, path):
    with open(os.path.join(os.path.dirname(__file__), path), "a", encoding="utf-8") as f:
        f.write(resultStr)


def read_questions_list(path):
    questions = []
    with open(path, "r") as f:
        gold = json.load(f)
        questions.extend(item['question'] for item in gold)
    return questions


def read_gold_file(path):
    queriesStr = ""
    with open(path, "r") as f:
        gold = json.load(f)
        for item in gold:
            queriesStr += f"{item['q']}{db_name}\n"
    return queriesStr


predictions = []
sum_tokens = 0
sum_costs = 0
questions = read_questions_list(os.path.join(
    os.path.dirname(__file__), "../data/gold.json"))
for q in tqdm(questions[:100]):
    print(f"Q: {q}")
    res = chat(q)
    print(f"A: {res}")
    tokens, cost = chatgpt.cost(res)
    sum_tokens += tokens
    sum_costs += cost
    predictions.append(f'{res}\t{db_name}\n')

save_string_to_file("".join(predictions), "../data/predictions.sql")

print(f"Total tokens: {sum_tokens}")
print(f"Total cost: {sum_costs}")
