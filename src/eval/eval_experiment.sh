#!/bin/bash

# Define SEOSSPATH variable
SEOSSPATH='../../data/seoss/'

# Define GOLDNAME variable
GOLDNAME=$(basename "${SEOSSPATH}gold_pig_not_specific.sql" .sql)

# Define MODEL variable
MODEL='gpt-3.5-turbo'

# Define other variables using SEOSSPATH, GOLDNAME, and MODEL
gold="${SEOSSPATH}${GOLDNAME}.sql"
pred="${SEOSSPATH}predictions-${MODEL}-${GOLDNAME}.sql"
db="${SEOSSPATH}database"
table="${SEOSSPATH}tables.json"
eval_output="${SEOSSPATH}eval_breakdown-${MODEL}-${GOLDNAME}.txt"

# Extract paths from variables
gold_path=$(realpath "$gold")
pred_path=$(realpath "$pred")
db_path=$(realpath "$db")
table_path=$(realpath "$table")
eval_output_path=$(realpath "$eval_output")

# Execute the command with the extracted paths
python evaluation.py --gold "$gold_path" --pred "$pred_path" --db "$db_path" --table "$table_path" > "$eval_output_path" --etype all
