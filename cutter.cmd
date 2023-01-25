@echo off 

if "%1" == "-f" (
    goto fixed_length

) else if "%1" == "-c" (
    goto custom_length

) else if "%1" == "-h" (
    goto help_usage

) else (
    echo.
    echo Unknown command! 
    echo Use %0 -h to see the help page
    echo.
    goto end
)


:fixed_length
echo.
set /p string_input=Enter a string:
echo.

setlocal enableDelayedExpansion
@REM Change the last value inside the round brackets (6, 2, change_this) in the line below to change the last printed character.
for /l %%i in (6, 2, 22) do (
    set "string_value=!string_input:~0,%%i!"
    echo First %%i characters: !string_value!
    echo.
)

goto end


:custom_length
echo.
set /p string_input=Enter the string: 
set /p index=Enter the number of characters to keep:

setlocal enableDelayedExpansion
set "shortstring=!string_input:~0,%index%!"
echo !shortstring!
echo.

goto end


:help_usage
echo.
echo Available flags: "-f" "-c", "-h"
echo Usage: %0 [-f] [-c] [-h]
echo.

goto end



:end