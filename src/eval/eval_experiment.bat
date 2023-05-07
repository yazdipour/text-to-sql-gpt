@echo off

rem Define SEOSSPATH variable
set "SEOSSPATH=../../data/seoss/"

rem Define GOLDNAME variable
for %%i in ("%SEOSSPATH%gold_pig_specific.sql") do set "GOLDNAME=%%~ni"

rem Define MODEL variable
set "MODEL=gpt-3.5"

rem Define other variables using SEOSSPATH, GOLDNAME, and MODEL
set "gold=%SEOSSPATH%%GOLDNAME%.sql"
set "pred=%SEOSSPATH%predictions-%MODEL%-turbo-%GOLDNAME%.sql"
set "db=%SEOSSPATH%database"
set "table=%SEOSSPATH%tables.json"
set "eval_output=%SEOSSPATH%eval_breakdown-%MODEL%-%GOLDNAME%.txt"

rem Execute the command with the extracted paths
python evaluation.py --gold "%gold%" --pred "%pred%" --db "%db%" --table "%table%" > "%eval_output%" --etype all
