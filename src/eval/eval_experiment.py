import os

# Define SEOSSPATH variable
SEOSSPATH = '../../data/seoss/'

# Define GOLDNAME variable
gold_file = os.path.join(SEOSSPATH, 'unbalanced/gold_pig_not_specific.sql')
GOLDNAME = os.path.splitext(os.path.basename(gold_file))[0]

# Define MODEL variable
MODEL = 'gpt-3.5-turbo'

# Define other variables using SEOSSPATH, GOLDNAME, and MODEL
gold = os.path.join(SEOSSPATH, f'{GOLDNAME}.sql')
pred = os.path.join(
    SEOSSPATH, f'unbalanced/predictions-{MODEL}-{GOLDNAME}.sql')
db = os.path.join(SEOSSPATH, 'database')
table = os.path.join(SEOSSPATH, 'tables.json')
eval_output = os.path.join(SEOSSPATH, f'eval_breakdown-{MODEL}-{GOLDNAME}.txt')

# Execute the command with the extracted paths
cmd = f'python evaluation.py --gold "{gold}" --pred "{pred}" --db "{db}" --table "{table}" > "{eval_output}" --etype all'
os.system(cmd)
