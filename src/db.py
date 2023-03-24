import json


def get_table_details(path) -> dict:
    table_details = {}
    with open(path, "r") as f:
        table_details = json.load(f)
    return table_details


def get_table_schemas(table_path) -> str:
    table_details = get_table_details(table_path)[0]
    table_names = table_details["table_names_original"]
    column_names = table_details["column_names_original"]
    column_types = table_details["column_types"]

    custom_types_str_set = set()
    tables_str_list = []
    for table_inx, name in enumerate(table_names):
        tables_str = f"table name: {name}\n"

        columns_str_list = [
            f"{column[1]} [{column_types[col_inx]}]"
            for col_inx, column in enumerate(column_names)
            if column[0] == table_inx
        ]
        tables_str += f"table columns: {', '.join(columns_str_list)}\n"
        tables_str_list.append(tables_str)
    tables_description = "\n\n".join(tables_str_list)

    return "\n\n" + tables_description
