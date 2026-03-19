# Algorithm Descriptions

## Salt Generation

In the authentication service, a random salt is generated for each new user.  
The salt is created using the cryptographically secure random number generator `Random.secure()`.  
After that, a sequence of random bytes of the specified length is generated and encoded in URL-safe Base64 format.

This approach makes it possible to:
- avoid identical hashes for identical passwords;
- increase resistance to precomputed hash table attacks;
- ensure unique processing of each password.

## Password Hashing

After the salt is generated, the password is not stored in plain text.  
SHA-256 is used for hashing.

Before calculating the hash, the salt and password are combined into a string in the following format:

`salt:password`

After that, the string is converted to UTF-8 bytes and passed to the SHA-256 algorithm.  
The resulting value is stored as a string and used during subsequent user login checks.

## Password Verification During Login

When a user logs in, the application:
1. finds the user record by email;
2. retrieves the stored salt;
3. recalculates the hash for the entered password;
4. compares the new hash with the stored one.

If the values match, the user is considered authenticated.

## Tour Filtering

On the main page of the application, tour search by text query is implemented.  
The search works across three fields:
- tour title;
- country;
- city.

The filtering algorithm performs the following actions:
1. reads the text from the search field;
2. removes extra spaces;
3. converts the string to lowercase;
4. for each tour, combines the title, country, and city into one string;
5. also converts it to lowercase;
6. checks whether this string contains the search query.

If the query is empty, the full list of tours is returned.  
Otherwise, only the tours that match the search conditions are displayed.