# Pets Adoption App 🦄

## Instructions

- Fork and clone [this repository](https://github.com/JoinCODED/Task-Flutter-CRUD-AdoptApp) to your `Development` folder.
- Endpoints:

```
Get pets, type: Get, https://coded-pets-api-crud.herokuapp.com/pets
Create a new pet, type: Post, https://coded-pets-api-crud.herokuapp.com/pets
Update a pet, type: Put, https://coded-pets-api-crud.herokuapp.com/pets/{petId}
Delete a pet, type: Delete, https://coded-pets-api-crud.herokuapp.com/pets/{petId}
Adopt a pet, type: Post, https://coded-pets-api-crud.herokuapp.com/pets/adopt/{petId}
```

### Part 1: Get Data

1. Install `dio` into your project:

```shell
flutter pub add dio
```

2. Create a folder named `services`, inside it create a file called `pets.dart`.
3. Import `dio` package in `pets.dart`.

```dart
import "package:dio/dio.dart";
```

4. Create a new `PetsServices` class and initialize a new dio instance.
5. Define your `_baseUrl`.
6. Create your first request that return a future list of pets and name it `getPets`.
7. Our endpoint is:

```
Get, https://coded-pets-api-crud.herokuapp.com/pets
```

8. Store the response of the request in a `Response` object.
9. Map your response to `Pet` objects using the `Pet.fromJson` constructor.
10. Don't forget to convert the result to a `List`.
11. Return your new `List` of `Pet`s.
12. Don't forget to wrap your request in a `try-catch` block.

13. In your `PetsProvider`, create a new function that returns a future void.
14. Import `services/pets.dart` file, and call `PetsServices().getPets()` function, don't forget to `await`.
15. Lastly assign the result of `PetsServices().getPets()` to the `pets` variable in the provider.

16. Back to `pages/home_page.dart`, wrap your `Consumer` widget with a `FutureBuilder` widget.
17. Assign the `future` property to the `getPets` function we created in our provider.
18. And in your `builder` property, return the `Consumer` widget.
19. Use the `dataSnapshot` argument to check if the data is still loading, and in this case, return a spinner. Or if there's an error, show the error in a `Text` widget.
