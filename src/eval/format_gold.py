from seq2seq.eval_spider.process_sql import get_schema, get_sql, Schema

import json
import os


def format_gold(json_filename, gold_filename):
    """
    Formats gold SQL queries from a .json file to a .sql file so they can be evaluated
    """
    gold_queries = []

    with open(json_filename, "r") as input_file:
        all_instances = json.loads(input_file.read())
        gold_queries.extend(f"{p['query']}\t{p['db_id']}" for p in all_instances)
    out_filename = os.path.join(os.path.dirname(json_filename), gold_filename)

    with open(out_filename, "w") as output_file:
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
    json_filename = "/app/dataset_files/seoss/gold_v1.json"
    db_dir = "/app/dataset_files/seoss/database"
    gold_filename = "gold_v1.sql"
    format_sql_field(json_filename, db_dir)
    format_gold(json_filename, gold_filename)
