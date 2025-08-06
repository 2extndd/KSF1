@echo off
echo Committing changes to GitHub...

REM Check if git is available
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed or not in PATH
    echo Please install Git from https://git-scm.com/
    pause
    exit /b 1
)

REM Initialize git repository if not already done
if not exist ".git" (
    echo Initializing git repository...
    git init
)

REM Add all files
echo Adding all files...
git add .

REM Commit changes
echo Committing changes...
git commit -m "Update: Latest changes to Kleinanzeigen Searcher project"

REM Add remote repository if not already added
git remote -v | findstr "origin" >nul 2>&1
if %errorlevel% neq 0 (
    echo Adding remote repository...
    git remote add origin https://github.com/2extndd/KSF1.git
)

REM Set branch to main
git branch -M main

REM Push to GitHub
echo Pushing to GitHub...
git push -u origin main

echo Done! Changes have been committed and pushed to GitHub.
pause 