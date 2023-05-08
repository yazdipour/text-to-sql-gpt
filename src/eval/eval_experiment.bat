@echo off

rem Define SEOSSPATH variable
set "SEOSSPATH=../../data/seoss/"

rem Define subdir variable
set "SUBDIR=balanced/"

@REM TODO: Only change here for evaluation
rem Define GOLDNAME variable
for %%i in ("%SEOSSPATH%gold.sql") do set "GOLDNAME=%%~ni"

rem Define MODEL variable
set "MODEL=gpt-3.5-turbo"

rem Define other variables using SEOSSPATH, GOLDNAME, MODEL, and SUBDIR
set "gold=%SEOSSPATH%%SUBDIR%%GOLDNAME%.sql"
set "pred=%SEOSSPATH%%SUBDIR%predictions-%MODEL%-%GOLDNAME%.sql"
set "db=%SEOSSPATH%database"
set "table=%SEOSSPATH%tables.json"
set "eval_output=%SEOSSPATH%%SUBDIR%eval_breakdown-%MODEL%-%GOLDNAME%.txt"

rem Execute the command with the extracted paths
python evaluation.py --gold "%gold%" --pred "%pred%" --db "%db%" --table "%table%" > "%eval_output%" --etype all
