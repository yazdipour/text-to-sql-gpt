from typing import List, Dict


def get_few_shot_example_messages() -> List[dict]:
    examples = [
        {
            "user": 'For issues  that belong to the "impl" component, give me their issue id, type and description',
            "assistant": 'SELECT T1.issue_id, T1.type, T1.description FROM issue AS T1 JOIN issue_component AS T2 ON T1.issue_id = T2.issue_id WHERE T2.component = "impl"'
        }
    ]
    messages = []
    for example in examples:
        messages.extend(
            (
                {
                    "role": "user",
                    "content": example["user"],
                },
                {
                    "role": "assistant",
                    "content": example["assistant"],
                },
            )
        )
    return messages


def get_system_prompt(schemas: str):
    return [
        {
            "role": "system",
            "content": (
                "You are a helpful assistant for generating syntactically correct read-only SQL to answer a given question."
                "\n"
                "The following are tables you can query:\n"
                "---------------------\n" + schemas + "---------------------\n"
                "Always specify the table where you are using the column."
                " Write one valid SQL in markdown format.\n"
            ),
        },
    ]


def get_user_prompt(natural_language_query):
    return {
        "role": "user",
        "content": (
                f"Generate syntactically correct read-only SQL to answer the following question: {natural_language_query}"
        )
    }
