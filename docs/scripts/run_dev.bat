@echo off
echo Checking Flutter environment...
call flutter doctor
if errorlevel 1 exit /b 1

echo Getting dependencies...
call flutter pub get
if errorlevel 1 exit /b 1

echo Running static analysis...
call flutter analyze
if errorlevel 1 exit /b 1

echo Starting application in development mode...
call flutter run
if errorlevel 1 exit /b 1