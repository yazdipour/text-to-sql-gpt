#!/bin/bash
if [ "$1" == "" ] || [ "$2" == "" ] || [ $# -gt 2 ]; then
	echo "Pass an experiment name and dataset as a command-line argument, e.g. ./eval_experiment.sh rasat-spider-dev-20-10-2022 spider"
	exit 1
fi

python format_predictions.py ../../experiment/$1/predictions_eval_None.json

python evaluation.py --gold ../../dataset_files/$2/dev_gold.sql --pred ../../experiment/$1/predictions.sql --etype all --db ../../dataset_files/$2/database --table ../../dataset_files/$2/tables.json > ../../experiment/$1/eval_breakdown.txt

cat ../../experiment/$1/eval_breakdown.txt
