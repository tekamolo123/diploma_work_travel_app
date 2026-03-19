# Project Deployment

## Purpose
This document describes the deployment procedure for the Flutter project `diploma_work_travel_app` in a production or demonstration environment.

## Project Type
The project is a client-side Flutter application.  
A separate web server, application server, database server, caching server, and file storage are not used.

## Project Architecture
Main project components:
- Flutter client application
- local authentication logic
- local mock data for tours
- Android emulator / Android device / Windows desktop target for running

## Hardware Requirements
Minimum requirements for the build or deployment machine:
- CPU: 2 cores
- RAM: 8 GB
- Free disk space: from 10 GB
- Stable internet connection for downloading dependencies

## Required Software
For deployment or build, the following must be installed:
- Git
- Flutter SDK
- Dart SDK
- Android SDK
- Android Studio or Visual Studio Code
- for Windows desktop build — Visual Studio with the Desktop development with C++ component

## Network Configuration
For local or demonstration deployment, no special network configuration is required.  
The project does not use an external backend, separate API services, or a database server.

## Environment Configuration
1. Clone the repository:
```bash
git clone https://github.com/tekamolo123/diploma_work_travel_app.git