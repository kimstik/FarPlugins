@echo off
if "%~1"=="" goto noparm

cd /D "%~dp0\Release"
7z a "..\_Arc\MBlockEditor%1.7z" MBlockEditorW3L*.dll MBlockEditorW3L*.map Comment_FileTypes.farconfig Editor.CommentIndent.lua Changelog
if errorlevel 1 goto err7z

7z a "..\_Arc\MBlockEditor%1.dbg.7z" MBlockEditorW3L*.pdb
if errorlevel 1 goto err7z

cd /D "%~dp0"
7z a -r "_Arc\MBlockEditor%1.src.7z" Release\*.reg Release\*.fml Release\Changelog src\* -x!*.suo -x!*.user -x!*.aps -x!*.log -x!*.sdf -x!*.opensdf
if errorlevel 1 goto err7z

goto fin

:noparm
echo Usage:    deploy.cmd ^<label^> [+]
echo Example:  deploy.cmd 12
pause
goto fin

:err7z
echo Can't create archive
pause
goto fin

:fin
