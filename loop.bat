@echo off
setlocal enableextensions enabledelayedexpansion
set /a "x = 0"
:while1
    if %x% leq 50000000 (
        echo %x%

        net start Tomcat7

        SLEEP 3600

        set /a "x = x/2 + 1"
        

        goto :while1
    )
endlocal
