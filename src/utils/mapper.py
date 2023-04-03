import re


def message_to_sql(content):
    content = extract_code_from_markdown(content).replace("\n", " ")
    return clean_message_content_to_get_sql(content)


def extract_code_from_markdown(content):
    regex = r"```([\s\S]+?)```"
    code_str = content
    if matches := re.findall(regex, code_str):
        code_str = matches[0]
        if match := re.search(r"(?i)sql\s+(.*)", code_str, re.DOTALL):
            code_str = match[1]
    return code_str


def clean_message_content_to_get_sql(content):
    # Ignore text after the SQL query terminator `;`
    content = content.split(";")[0]

    # Remove prefix for corrected query assistant message
    split_corrected_query_message = content.split(":")
    return (
        split_corrected_query_message[1].strip()
        if len(split_corrected_query_message) > 1
        else content
    )
