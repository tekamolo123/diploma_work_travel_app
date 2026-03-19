# ✈️ Travel App (Flutter)

A Flutter mobile application for user authentication, tour browsing, tour search, and viewing detailed travel offers.

> Academic project focused on a simple client-side architecture.  
> All core operations are performed locally inside the application without a backend server or external database.

---

## 📌 Overview

**Travel App** is a mobile application built with **Flutter** for browsing туристические туры, searching destinations, and viewing detailed trip information.

The project demonstrates:

- user registration and login;
- local authentication flow;
- splash-based startup navigation;
- tour catalog and search;
- detailed tour pages;
- basic automated testing.

---

## 🎯 Project Purpose

The application is designed for:

- user registration and authentication;
- viewing a list of travel tours;
- searching tours by title, country, or city;
- viewing detailed information about a selected tour;
- demonstrating a simple Flutter navigation flow and local business logic.

---

## 🚀 Main Features

### 🔐 Authentication
- register with **nickname + email + password**;
- login using **email + password**;
- password hashing using **SHA-256 with random salt**;
- local session state through the current authenticated user.

### 📱 Splash Flow
- display a splash screen during startup;
- automatically redirect the user depending on the authentication state.

### 🗺️ Tour Catalog
- display a list of available tours;
- show tour title, country, city, duration, and price;
- open a separate details page for a selected tour.

### 🔎 Search
- search tours by title;
- search tours by country or city;
- case-insensitive filtering;
- show a fallback message when no tours are found.

### 📄 Tour Details
- display full information about a selected tour;
- show trip destination, duration, price, and description;
- provide a placeholder booking button for future functionality.

### ✅ Testing
- tests for authentication logic;
- tests for search and filtering on the home page;
- base widget test file for Flutter test setup.

---

## 🏗️ Architecture

This project is a **mobile client-side application**, not a web-based client-server system.  
Its architecture is intentionally lightweight and focused on:

- local UI logic;
- local authentication state;
- static tour data.

### Included
- Flutter UI;
- page routing and navigation;
- service layer for authentication;
- local in-memory storage for registered users;
- static mock data for tours;
- automated tests for core functionality;
- platform folders for Android, iOS, Linux, macOS, Windows, and Web.

### Not Included
- web server;
- application server;
- backend API;
- external database;
- cloud authentication provider;
- persistent local database;
- online booking system.

---

### Dependency Flow

```text
UI (pages/widgets)
    -> Routes
        -> AuthService / mockTours
            -> in-memory state
```

---

## 🛠 Tech Stack

| Technology | Purpose |
|---|---|
| Flutter / Dart | Main application development |
| Material Design | UI components and styling |
| crypto | SHA-256 password hashing |
| Flutter test | Automated testing |
| Android / iOS / Web / Desktop | Platform support |

---

## 📂 Project Structure

### Root Structure

```text
android/                   Android-specific project files
ios/                       iOS-specific project files
lib/                       Main application source code
linux/                     Linux desktop support files
macos/                     macOS desktop support files
test/                      Automated tests
web/                       Web support files
windows/                   Windows desktop support files
README.md                  Developer documentation
pubspec.yaml               Flutter dependencies
pubspec.lock               Locked package versions
analysis_options.yaml      Analyzer rules
LICENSE                    License information
.gitignore                 Git ignore rules
```

### Structure of `lib/`

```text
lib/
  main.dart
  app.dart
  auth_service.dart
  home_page.dart
  login_page.dart
  mock_tours.dart
  registration_page.dart
  routes.dart
  splash_page.dart
  tour.dart
  tour_details_page.dart
```

### Structure of `test/`

```text
test/
  auth_service_test.dart
  home_page_filter_test.dart
  widget_test.dart
```

---

## 🧩 Main Parts Description

| File | Description |
|---|---|
| `main.dart` | Application entry point |
| `app.dart` | Root Flutter app, route registration, and route generation |
| `auth_service.dart` | Local authentication service with in-memory users, random salt generation, and SHA-256 password hashing |
| `routes.dart` | Centralized route names |
| `splash_page.dart` | Startup screen with redirect logic based on login state |
| `login_page.dart` | User login form and login flow |
| `registration_page.dart` | User registration form and account creation flow |
| `home_page.dart` | Main page with greeting, search field, and tour list |
| `mock_tours.dart` | Static list of predefined tours |
| `tour.dart` | Tour data model |
| `tour_details_page.dart` | Detailed information page for a selected tour |

---

## 🧳 Tour Data Model

The project currently uses a local `Tour` model with the following fields:

```text
Tour(
  id,
  title,
  country,
  city,
  days,
  price,
  description
)
```

### Example Tours
- Морський відпочинок All Inclusive
- Європейський вікенд
- Гірський релакс

---

## ⚙️ Setup Guide

### 1. Install Required Software

Make sure you have installed:

- Git
- Flutter SDK
- Android Studio
- Android SDK
- Android emulator or physical Android device
- JDK
- Optional: VS Code or Android Studio as IDE

### 2. Configure Flutter Environment

Run:

```bash
flutter doctor
```

If Android licenses are not accepted yet:

```bash
flutter doctor --android-licenses
```

### 3. Clone the Repository

```bash
git clone <your_repository_url>
cd <your_project_folder>
```

### 4. Install Dependencies

```bash
flutter pub get
```

### 5. Check Available Devices

```bash
flutter devices
```

### 6. Run the Project

```bash
flutter run
```

---

## 💻 Basic Commands

```bash
flutter pub get
flutter run
flutter devices
flutter analyze
flutter test
flutter clean
```

After `flutter clean`, run again:

```bash
flutter pub get
```

---

## 🔄 Typical Workflow

```bash
git pull
flutter pub get
flutter analyze
flutter run
flutter test
```

---

## ⚠️ Known Limitations

- Tour data is currently stored as mock data in source code.
- User accounts are stored only in memory and are not persisted after application restart.
- Session persistence is not implemented.
- Booking functionality is currently a placeholder.
- The project does not include a backend server.
- The UI is intentionally minimal for academic / MVP purposes.

---

## 🛣 Roadmap

- save current user session locally;
- add persistent storage for users;
- move tour data from mock list to local database or API;
- add booking workflow;
- add user profile page;
- add favorites or saved tours;
- improve search and filtering options.

---

## ✅ Audit Checklist

- [x] Public repository
- [x] `.gitignore` added
- [x] `README.md` added
- [x] `LICENSE` added
- [x] No sensitive information included

---

## 📝 Code Documentation Standards

All new public classes, methods, and functions in this project should be documented using Dart documentation comments with the `///` format.

### Rules
- document every public API element;
- start each documentation block with a short summary sentence;
- describe the purpose of the class, method, or function clearly;
- explain important parameters, return values, and side effects when needed;
- keep documentation updated whenever the related code is changed.

### Example

```dart
/// Filters tours by title, country, or city.
///
/// Returns only tours that match the entered search query.
```

---

## 📄 License

This project is intended for academic / educational use.

## Code Documentation

The project uses code documentation with Dart doc comments written as `///`.

### Main Rules
- document public classes, methods, and important parts of the logic;
- keep the documentation up to date after code changes;
- use short and clear descriptions of the purpose of classes and methods.

### Documentation Generation
The following command is used to generate documentation:

```bash
dart doc

## Running the Project for a Developer

### Required Software
Before getting started, you need to install:
- Git
- Flutter SDK
- Dart SDK
- Android Studio or Visual Studio Code
- Android SDK
- an Android emulator or a physical Android device
- for running on Windows — Visual Studio with the Desktop development with C++ component

### Cloning the Repository
Clone the repository with the following command:

```bash
git clone https://github.com/tekamolo123/diploma_work_travel_app.git