@echo off
cls
echo Now generating two random numbers from 1 to 10...

set /a random1=(%random% %% 10) + 1

set /a random2=(%random% %% 10) + 1

cls
echo First random number: %random1%
echo Second random number: %random2%
echo.
echo Get ready to solve simple arithmetic operations!


pause

set /a result_add=%random1% + %random2%
set /a result_sub=%random1% - %random2%
set /a result_mul=%random1% * %random2%
set /a result_div=%random1% / %random2%

goto add

:add
cls
echo ADDITION 
echo --
echo %random1% + %random2% = ?
set /p userAnswer= "Your answer: "

if "%userAnswer%" EQU "%result_add%" (
    echo.
    echo Correct! Good Job.
) else (
    echo.
    echo Oops, incorrect. The correct answer is %result_add%.
)
pause 
goto sub

:sub
cls
echo SUBTRACTION
echo --
echo %random1% - %random2% = ?
set /p userAnswer= "Your answer: "

if "%userAnswer%" EQU "%result_sub%" (
    echo.
    echo Correct! Good Job.
) else (
    echo.
    echo Oops, incorrect. The correct answer is %result_sub%.
)
pause
goto mul

:mul
cls
echo MULTIPLICATION
echo --
echo %random1% * %random2% = ?
set /p userAnswer= "Your answer: "

if "%userAnswer%" EQU "%result_mul%" (
    echo.
    echo Correct! Good Job.
) else (
    echo.
    echo Oops, incorrect. The correct answer is %result_mul%.
)
pause
goto div

:div
cls

if %random2%==0 (
    echo.
    echo Oh no, division by zero is not possible. Generating new numbers...
    goto :eof
)

echo DIVISION
echo --
echo %random1% / %random2% = ? (rounded down)
set /p userAnswer= "Your answer: "

if "%userAnswer%" EQU "%result_div%" (
    echo.
    echo Correct! Good Job.
) else (
    echo.
    echo Oops, incorrect. The correct answer is %result_div%.
)
pause