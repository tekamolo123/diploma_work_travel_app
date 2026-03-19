@echo off
echo Pulling latest changes from repository...
call git pull origin main
if errorlevel 1 exit /b 1

echo Getting updated dependencies...
call flutter pub get
if errorlevel 1 exit /b 1

echo Running static analysis...
call flutter analyze
if errorlevel 1 exit /b 1

echo Regenerating documentation...
call dart doc
if errorlevel 1 exit /b 1

echo Update completed successfully.