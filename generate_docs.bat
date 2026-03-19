@echo off
echo Running flutter pub get...
call flutter pub get
if errorlevel 1 exit /b 1

echo Generating documentation...
call dart doc
if errorlevel 1 exit /b 1

echo Documentation generated successfully.