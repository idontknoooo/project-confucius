:: Variable
%var%
set a = 5
echo %a%
set /A a=5
set /A b=10
set /A c=%a% + %b%
echo %c%

SETLOCAL
set var=13145
set /A var=%var% + 5
echo %var%
echo %globalvar%
ENDLOCAL
:: String
set message=Hello World
echo %message%
:: Empty String
Set a=
:: Check empty
if [%a%]==[] echo "String A is empty"
:: String interpolation
SET a=HELLO
SET b=WORLD
SET /A d=50
SET c=%a% and %b% %d% :: use `and` to concat multiple strings
echo %c%
:: Left string
set str=%str:~0,5%
echo %str%
:: Array
set list=1 2 3 4
(for %%a in (%list%) do (
    echo %%a
))
:: If else
if %c%==15 (echo "The value of variable c is 15") else (echo "unknown value")
:: DATE
DATE
TIME
