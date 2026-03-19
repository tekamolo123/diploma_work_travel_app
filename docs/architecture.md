# Project Architecture

The project is built as a Flutter application with separation into screens, routes, data models, and an authentication service.

## Main Components
- `main.dart` — the application entry point;
- `app.dart` — configuration of `MaterialApp`, themes, and routing;
- `routes.dart` — named application routes;
- `auth_service.dart` — local user authentication logic;
- `tour.dart` — the tour data model;
- `mock_tours.dart` — demo data for the tour list;
- `home_page.dart` — the main page with the list of tours and search;
- `login_page.dart` — the user login page;
- `registration_page.dart` — the user registration page;
- `tour_details_page.dart` — the page with detailed tour information;
- `splash_page.dart` — the startup page with login state checking.

## Component Interaction
After the application starts through `main.dart`, `MyApp` is initialized, which sets up the routes and the initial page.  
`SplashPage` determines whether the user is authenticated and redirects them to `HomePage` or `LoginPage`.  
`LoginPage` and `RegisterPage` interact with `AuthService`.  
`HomePage` uses `mockTours` to display the list of tours and opens `TourDetailsPage` for the selected `Tour` object.

## Design Approach
The project architecture is simple and suitable for an educational application.  
Business logic is extracted into a separate service, the route structure is centralized, and the data model and mock data are separated from the UI.