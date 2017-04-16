@echo off
SET /P variable=Password : 
if %variable% == j72HRG goto success
if not %variable% == j72HRG goto fail
:success
echo d | xcopy /s /e "%~dp0../data/locked/files/admin/emails" "%~dp0../filesystem/documents/emails"
echo d | xcopy /s /e "%~dp0../data/locked/files/admin/work" "%~dp0../filesystem/documents/work"
echo d | xcopy /s /e "%~dp0../data/locked/files/admin/private" "%~dp0../filesystem/documents/private"
echo d | xcopy /s /e "%~dp0../data/locked/files/admin/bin" "%~dp0../bin"
goto end
:fail
cls
echo Password incorrect, restart program to retry
goto :end
:end
pause