@echo off
SET /P variable=Password : 
if %variable% == j72HRG goto success
if not %variable% == j72HRG goto fail
:success
echo yahh
goto end
:fail
cls
echo Password incorrect, restart program to retry
goto :end
:end
pause