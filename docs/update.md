# Project Update

## Purpose
This document describes the procedure for updating the Flutter project `diploma_work_travel_app` after code changes or when moving to a new version of the application.

## Preparation for Update
Before updating, you need to:
1. Make sure that the current working version of the project is stable.
2. Save a backup copy of the repository or the previous release.
3. Check the compatibility of the Flutter SDK version and dependencies.
4. If necessary, save the current commit or create a tag.
5. Prepare the build or testing environment.

## Creating a Backup
Before updating, it is recommended to:
- save the previous release build;
- create a backup copy of the documentation;
- save the current state of the repository using `git commit` or `git tag`;
- if necessary, export local build artifacts.

## Compatibility Check
Before updating, check:
- the current state of the Flutter SDK;
- package compatibility in `pubspec.yaml`;
- the absence of critical changes in the project structure;
- the correctness of platform dependency configuration.

Commands for checking:
```bash
flutter doctor
flutter pub get
flutter analyze