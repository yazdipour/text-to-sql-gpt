@echo off

rem Define SEOSSPATH variable
set "SEOSSPATH=../../data/seoss/"

rem Define UNBALANCED directory
set "UNBALANCED=balanced/"

@REM TODO: Only change here for evaluation
rem Define GOLDNAME variable
for %%i in ("%SEOSSPATH%gold_specific.sql") do set "GOLDNAME=%%~ni"

rem Define MODEL variable
set "MODEL=gpt-3.5-turbo"

rem Define other variables using SEOSSPATH, GOLDNAME, MODEL, and UNBALANCED
set "gold=%SEOSSPATH%%UNBALANCED%%GOLDNAME%.sql"
set "pred=%SEOSSPATH%%UNBALANCED%predictions-%MODEL%-%GOLDNAME%.sql"
set "db=%SEOSSPATH%database"
set "table=%SEOSSPATH%tables.json"
set "eval_output=%SEOSSPATH%%UNBALANCED%eval_breakdown-%MODEL%-%GOLDNAME%.txt"

rem Execute the command with the extracted paths
python evaluation.py --gold "%gold%" --pred "%pred%" --db "%db%" --table "%table%" > "%eval_output%" --etype all
