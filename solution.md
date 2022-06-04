1. Back to `pages/home_page.dart`, wrap your grid view with a `Consumer` widget.

```dart
Consumer<PetsProvider>(
  builder: (context, petsProvider, child) =>
  GridView.builder(
    [...]
```

2. Wrap your `Consumer` widget with a `FutureBuilder` widget.

```dart
FutureBuilder()
```

2. Assign the `future` property to the `getPets` function we created in our provider.

```dart
FutureBuilder(
     future: Provider.of<PetsProvider>(context, listen: false).getPets(),)
```

3. And in your `builder` property, return the `Consumer` widget.

```dart
 future: Provider.of<PetsProvider>(context, listen: false).getPets(),
 builder: (context, dataSnapshot) => Consumer[...]
```

4. Use the `dataSnapshot` argument to check if the data is still loading, and in this case, return a spinner. Or if there's an error, show the error in a `Text` widget.

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
                    return Consumer
                    [...]
```
