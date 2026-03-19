# Backup

## Purpose
This document describes the backup approach for the Flutter project `diploma_work_travel_app`, its documentation, and build artifacts.

## What Should Be Backed Up
For this project, it is recommended to regularly save:
- the project source code;
- the `pubspec.yaml` file;
- the `docs` folder with all technical documentation;
- generated documentation;
- release builds of the application;
- important tags and commits of the Git repository.

## Main Backup Method
The main mechanism for saving the source code is a Git repository with remote storage on GitHub.  
All important changes should be committed and pushed to the remote repository.

## Additional Backup
Additionally, it is recommended to:
- store archives of release builds;
- create separate archives of generated documentation;
- if necessary, duplicate project copies on external storage or in cloud storage.

## Recommended Frequency
It is advisable to perform backups:
- after each completed development stage;
- before updating the project;
- before a release build;
- before making major structural changes;
- after updating the documentation.

## Example Backup Scenario
1. Run `git add .`
2. Create a commit:
```bash
git commit -m "Backup before update"