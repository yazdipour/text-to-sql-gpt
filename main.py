import openai

with open('.env') as f:
    env = dict(line.strip().split('=') for line in f)

openai.api_key = env['OPENAI_API_KEY']
model_name = "gpt-3.5-turbo"

message_history = []


def chat(inp, role="user"):
    message_history.append({"role": role, "content": f"{inp}"})
    completion = openai.ChatCompletion.create(
        model=model_name,
        messages=message_history
    )
    reply_content = completion.choices[0].message.content
    message_history.append(
        {"role": "assistant", "content": f"{reply_content}"})
    return reply_content


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
