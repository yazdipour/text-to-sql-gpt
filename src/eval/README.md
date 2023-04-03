# To run the eval

`python evaluation.py --gold ../../data/spider/gold.sql --pred ../../data/spider/predictions.sql --db ../../data/spider/database --table ../../data/spider/tables.json > ../../data/spider/eval_breakdown.txt --etype all`

`python evaluation.py --gold ../../data/seoss/gold.sql --pred ../../data/seoss/predictions.sql --db ../../data/seoss/database --table ../../data/seoss/tables.json > ../../data/seoss/eval_breakdown.txt --etype all`