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

4. Create a new `DioClient` class and initialize a new dio instance.

```dart
class DioClient {
  final Dio _dio = Dio();
}
```

5. Define your `_baseUrl`.

```dart
class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'http://10.0.2.2:5000';
}
```

6. Create your first request that return a future list of pets and name it `getPets`.

```dart
  Future<List<Pet>> getPets() async {}
```

- Our endpoint is:

```
Get, http://http://10.0.2.2:5000/pets
```

7. Store the response of the request in a `Response` object.

```dart
  Future<List<Pet>> getPets() async {
    List<Pet> pets = [];
    Response response = await _dio.get(_baseUrl + '/pets');
  }
```

8. Map your response to `Pet` objects using the `Pet.fromJson` constructor.

```dart
  Future<List<Pet>> getPets() async {
    List<Pet> pets = [];
      Response response = await _dio.get(_baseUrl + '/pets');
      pets = (response.data as List).map((pet) => Pet.fromJson(pet)).toList();
  }
```

9. Return your new `List` of `Pet`s.

```dart
  Future<List<Pet>> getPets() async {
    List<Pet> pets = [];
      Response response = await _dio.get(_baseUrl + '/pets');
      pets = (response.data as List).map((pet) => Pet.fromJson(pet)).toList();
    return pets;
  }
```

10. Don't forget to wrap your request in a `try-catch` block.

```dart
  Future<List<Pet>> getPets() async {
    List<Pet> pets = [];
    try {
      Response response = await _dio.get(_baseUrl + '/pets');
      pets = (response.data as List).map((pet) => Pet.fromJson(pet)).toList();
    } on DioError catch (error) {
      print(error);
    }
    return pets;
  }
```

11. In your `PetsProvider`, create a new function that returns a future void.

```dart
  Future<void> getPets() async {}
```

12. Import `services/pets.dart` file, and call `DioClient().getPets()` function, don't forget to `await`.

```dart
  Future<void> getPets() async {
    await DioClient().getPets();
  }
```

13. Lastly assign the result of `DioClient().getPets()` to the `pets` variable in the provider.

```dart
  Future<void> getPets() async {
    pets = await DioClient().getPets();
  }
```

14. Back to `pages/home_page.dart`, wrap your `Consumer` widget with a `FutureBuilder` widget.

```dart
FutureBuilder()
```

15. Assign the `future` property to the `getPets` function we created in our provider.

```dart
FutureBuilder(
     future: Provider.of<PetsProvider>(context, listen: false).getPets(),)
```

16. And in your `builder` property, return the `Consumer` widget.

```dart
 future: Provider.of<PetsProvider>(context, listen: false).getPets(),
 builder: (context, dataSnapshot) => Consumer[...]
```

17. Use the `dataSnapshot` argument to check if the data is still loading, and in this case, return a spinner. Or if there's an error, show the error in a `Text` widget.

```dart
FutureBuilder(
              future:
                  Provider.of<PetsProvider>(context, listen: false).getPets(),
              builder: (context, dataSnapshot) {
                if (dataSnapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  if (dataSnapshot.error != null) {
                    return const Center(
                      child: Text('An error occurred'),
                    );
                  } else {
                    return Consumer[...]
```
