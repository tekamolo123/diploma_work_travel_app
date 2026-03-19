# Business Logic

## Authentication
The user can register a new account, log in to the application, and end the session.  
Registration and login are implemented through `AuthService`, which stores user data in a local data structure and uses salted password hashing.

## Working with Tours
The main page of the application displays a list of available tours.  
The data is taken from `mock_tours.dart` and presented as a list of `Tour` objects.

## Search
The user can search tours by title, country, or city.  
Filtering is implemented on `HomePage` by processing the text entered into the search field.

## Viewing Tour Details
After selecting a tour from the list, the user goes to the `TourDetailsPage`, which displays detailed information about the selected tour: title, country, city, duration, price, and description.

## Navigation
Navigation between screens is performed through named routes defined in `routes.dart`.  
For the tour details page, a `Tour` object is passed through route arguments.

## Implementation Features
The application logic is focused on an educational scenario, so instead of a database and server-side part, local authentication and demo data are used.