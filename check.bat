@echo off
echo Running flutter pub get...
call flutter pub get
if errorlevel 1 exit /b 1

echo Running dart format...
call dart format lib
if errorlevel 1 exit /b 1

echo Running flutter analyze...
call flutter analyze
if errorlevel 1 exit /b 1

echo All checks passed.