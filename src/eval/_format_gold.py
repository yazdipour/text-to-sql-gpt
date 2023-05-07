from process_sql import get_schema, Schema, get_sql
import glob
import json
import os


def format_gold(json_filename, gold_filename):
    """
    Formats gold SQL queries from a .json file to a .sql file so they can be evaluated
    """
    gold_queries = []

    with open(json_filename, "r", encoding='utf-8') as input_file:
        all_instances = json.loads(input_file.read())
        gold_queries.extend(
            f"{p['query']}\t{p['db_id']}" for p in all_instances)
    out_filename = os.path.join(os.path.dirname(json_filename), gold_filename)

    with open(out_filename, "w", encoding='utf-8') as output_file:
        for q in gold_queries:
            output_file.write(q + "\n")


def format_sql_field(json_filename, db_dir):
    """
    Creates a 'sql' field in the given .json file
    """
    with open(json_filename, "r") as input_file:
        all_instances = json.loads(input_file.read())

    for i in all_instances:
        db = os.path.join(db_dir, i["db_id"], i["db_id"] + ".sqlite")
        schema = Schema(get_schema(db))
        if not i.get("sql"):
            i["sql"] = get_sql(schema, i["query"])

    with open(json_filename, "w") as output_file:
        output_file.write(json.dumps(all_instances))


if __name__ == "__main__":
    db_dir = "../../data/seoss/database"
    json_filenames = f"../../data/seoss/unbalanced/*.json"
    # relative path
    json_filenames = os.path.join(os.path.dirname(__file__), json_filenames)
    globs = glob.glob(json_filenames)
    for json_filename in globs:
        goldname = json_filename.split("/")[-1].split("\\")[-1].split(".")[0]
        gold_filename = f"{goldname}.sql"
        format_sql_field(json_filename, db_dir)
        format_gold(json_filename, gold_filename)
