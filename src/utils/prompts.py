from typing import List, Dict


def get_few_shot_example_messages() -> List[dict]:
    examples = [
        {
            "user": "Give me a list with all issue ids that are of type Bug",
                    "assistant": "SELECT issue_id FROM issue WHERE type = 'Bug'"
        },
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


def get_system_prompt(schemas: str, db_name: str):
    return [
        {
            "role": "system",
            "content": (
                "You are a helpful assistant for generating syntactically correct read-only SQL to answer a given question."
                "\n" + "Database: " + db_name + "\n"
                "The following are tables you can query:\n"
                "---------------------\n" + schemas + "---------------------\n"
                "Do not use IN keyword.\n"
                "If it is necessary to use AS then use it like T1 T2 ..., but if the alias name is not going to be used in query again, then do not use.\n"
                "Do not filter WHERE for being NOT NULL if it is not nessascry.\n"
                "If in using COUNT(*) and COUNT(COLUMN) there is no difference then use COUNT(*).\n"
                "Instead of <> use !=.\n"
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
