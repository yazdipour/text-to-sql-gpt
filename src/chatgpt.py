import openai
from typing import List, Dict


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
        max_tokens=100,
        messages=messages
    )


# calculate the cost:
def cost(reply_content):
    # 1 token approximately equals 4 characters of text
    tokens = len(reply_content) / 4
    cost = tokens / 1000 * 0.02
    return tokens, cost
