from evaluation import count_component1, count_component2, count_others

import json
import os
import sys

AGG_OPS = ('none', 'max', 'min', 'count', 'sum', 'avg')


def eval_hardness(sql):
    count_comp1_ = count_component1(sql)
    count_comp2_ = count_component2(sql)
    count_others_ = count_others(sql)

    if count_comp1_ <= 1 and count_others_ == 0 and count_comp2_ == 0:
        return "easy"
    elif (count_others_ <= 2 and count_comp1_ <= 1 and count_comp2_ == 0) or \
            (count_comp1_ <= 2 and count_others_ < 2 and count_comp2_ == 0):
        return "medium"
    elif (count_others_ > 2 and count_comp1_ <= 2 and count_comp2_ == 0) or \
            (2 < count_comp1_ <= 3 and count_others_ <= 2 and count_comp2_ == 0) or \
            (count_comp1_ <= 1 and count_others_ == 0 and count_comp2_ <= 1):
        return "hard"
    else:
        return "extra"


def form_clause_str(sql_dict, delimiter='|'):
    """
    Given a dictionary of SQL clauses, form a string encoding them
    """
    ##############################
    #
    # select: is distinct, aggregation
    # from
    # from: no. tables
    # where: has and/or, has nested subquery
    # groupBy
    # having: has and/or, aggregation, has nested subquery
    # orderBy: is asc/desc
    # limit
    # union
    # intersect
    # except
    #
    ##############################
    clause_str = ""
    no_clauses = 0

    # select clause
    select = sql_dict.get('select')
    clause_str += "SELECT "
    no_clauses += 1
    if select[0]:
        clause_str += "DISTINCT "
    for unit in select[1]:
        if unit[0] != 0:
            clause_str += AGG_OPS[unit[0]] + " "
    clause_str += delimiter

    # from clause
    from_clause = sql_dict.get('from')
    clause_str += "FROM "
    no_clauses += 1
    clause_str += delimiter

    # number of tables in from clause
    no_tables = len(from_clause.get('table_units', []))
    clause_str += str(no_tables)
    clause_str += delimiter

    # where clause
    where = sql_dict.get('where')
    if where:
        clause_str += "WHERE "
        no_clauses += 1
        if 'and' in where:
            clause_str += "AND "
        if 'or' in where:
            clause_str += "OR "
        for unit in where:
            if type(unit) != str:
                if type(unit[3]) == dict or type(unit[4]) == dict:
                    clause_str += "SUBQUERY "
                    break
    clause_str += delimiter

    # group by clause
    group_by = sql_dict.get('groupBy')
    if group_by:
        clause_str += "GROUP BY "
        no_clauses += 1
    clause_str += delimiter

    # having clause
    having = sql_dict.get('having')
    if having:
        clause_str += "HAVING "
        no_clauses += 1
        if 'and' in having:
            clause_str += "AND "
        if 'or' in having:
            clause_str += "OR "
        for unit in having:
            if type(unit) != str:
                if unit[2][1][0] != 0:
                    clause_str += AGG_OPS[unit[2][1][0]] + " "
                if unit[2][2] and unit[2][2][0] != 0:
                    clause_str += AGG_OPS[unit[2][2][0]] + " "
        for unit in having:
            if type(unit) != str:
                if type(unit[3]) == dict or type(unit[4]) == dict:
                    clause_str += "SUBQUERY "
                    break
    clause_str += delimiter

    # order by clause
    order_by = sql_dict.get('orderBy')
    if order_by:
        clause_str += "ORDER BY " + order_by[0] + " "
        no_clauses += 1
    clause_str += delimiter

    # limit clause
    limit = sql_dict.get('limit')
    if limit:
        clause_str += "LIMIT " + str(limit) + " "
        no_clauses += 1
    clause_str += delimiter

    # union clause
    union = sql_dict.get('union')
    if union:
        clause_str += "UNION "
        no_clauses += 1
    clause_str += delimiter

    # intersect clause
    intersect = sql_dict.get('intersect')
    if intersect:
        clause_str += "INTERSECT "
        no_clauses += 1
    clause_str += delimiter

    # except clause
    if sql_dict.get('except'):
        clause_str += "EXCEPT "
        no_clauses += 1
    clause_str += delimiter

    # number of clauses
    clause_str += str(no_clauses)

    return clause_str


def analyse_dataset(dataset_name):
    """
    Prints statistics on the gold queries for a given dataset
    """
    delimiter = '|'
    query_data = []

    dataset_file = f"../../dataset_files/{dataset_name}/"
    if dataset_name == "spider_dk":
        dataset_file += "spider-DK.json"
    else:
        dataset_file += "dev.json"

    with open(dataset_file, 'r') as input_file:
        instances = json.load(input_file)
        for i in instances:
            instance_str = ""

            # Append statistics to a string
            instance_str += i['query']
            instance_str += f" {delimiter} "
            instance_str += i['question']
            instance_str += f" {delimiter} "
            instance_str += eval_hardness(i['sql'])
            instance_str += f" {delimiter} "
            instance_str += form_clause_str(i['sql'], delimiter)
            instance_str += f" {delimiter}"
            instance_str += str(len(i['query']))
            instance_str += f" {delimiter}"
            instance_str += str(len(i['question']))

            query_data.append(instance_str)

    out_filename = f"../../dataset_files/statistics/{dataset_name}.txt"

    with open(out_filename, 'w') as output_file:
        for q in query_data:
            output_file.write(q + '\n')

    print(f"Wrote result to {out_filename}")
    print('Result can be pasted into Google Sheets with Ctrl-V --> click Paste Options at bottom-right --> Split text to columns --> Change separator --> Custom --> Type "|" --> Enter')


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("analyse_dataset() takes 1 argument: the dataset name, e.g. spider")
    else:
        dataset_name = sys.argv[1]
        analyse_dataset(dataset_name)
