import json


def get_table_schemas(table_path, db_id) -> str:

    with open(table_path, "r") as f:
        tables = json.load(f)
    table = next(table for table in tables if table["db_id"] == db_id)
    table_names = table["table_names_original"]
    column_names = table["column_names_original"]
    column_types = table["column_types"]

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
