import prompts
import db
import chatgpt
import openai
import os
import mapper

envPath = os.path.join(os.path.dirname(__file__), '.env')
with open(envPath) as f:
    env = dict(line.strip().split('=') for line in f)

openai.api_key = env['OPENAI_API_KEY']
model_name = env['OPENAI_MODEL_NAME']


def chat(input):
    table_schema = db.get_table_schemas(os.path.join(
        os.path.dirname(__file__), "../data/tables_onlypig.json"))
    prompt = prompts.get_system_prompt(schemas=table_schema)
    prompt.append(prompts.get_user_prompt(input))
    reply_content = chatgpt.call_chatgpt(prompt, model=model_name)
    reply_content = reply_content.choices[0].message.content
    return mapper.message_to_sql(reply_content)


res = chat("Give me a list with all issue ids that are of type Bug")
tokens, cost = chatgpt.cost(res)
print(res)
print(f"tokens: {tokens}, cost: {cost}$")
