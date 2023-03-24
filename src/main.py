import openai
from typing import List, Dict

with open('.env') as f:
    env = dict(line.strip().split('=') for line in f)

openai.api_key = env['OPENAI_API_KEY']
model_name = "gpt-3.5-turbo"

message_history = []


def chat(inp, role="user"):
    message_history.append({"role": role, "content": f"{inp}"})
    reply_content = call_chatgpt(messages=message_history).message.content
    message_history.append({"role": "assistant", "content": "x"})
    return reply_content


def call_chatgpt(
        messages: List[Dict[str, str]],
        temperature: int = 0,
        model: str = "gpt-3.5-turbo"
) -> str:
    # temperature: What sampling temperature to use, between 0 and 2.
    # Higher values like 0.8 will make the output more random,
    # while lower values like 0.2 will make it more focused and deterministic.
    return openai.ChatCompletion.create(
        model=model,
        temperature=temperature,
        messages=messages
    ).choices[0]


# calculate the cost:
def cost(reply_content):
    # 1 token approximately equals 4 characters of text
    tokens = len(reply_content) / 4
    # "gpt-3.5-turbo" is "ChatGPT" $0.002 per 1k tokens
    cost = tokens / 1000 * 0.002
    return tokens, cost


res = chat("Hello, how are you?")
print(res)
tokens, cost = cost(res)
print(f"tokens: {tokens}, cost: {cost}$")
