# Pets Adoption App 🦄

![Ipets](https://user-images.githubusercontent.com/84308096/167295237-ac5ea80c-cb66-4975-9a93-c844dbfc6b37.png)

## 🍋 Instructions

- Fork and clone [this repository](https://github.com/JoinCODED/Task-Flutter-Get-AdoptApp) to your `Development` folder.
- Endpoints:

```
Get pets, type: Get, https://coded-pets-api-crud.herokuapp.com/pets
Create a new pet, type: Post, https://coded-pets-api-crud.herokuapp.com/pets
Update a pet, type: Put, https://coded-pets-api-crud.herokuapp.com/pets/{petId}
Delete a pet, type: Delete, https://coded-pets-api-crud.herokuapp.com/pets/{petId}
Adopt a pet, type: Post, https://coded-pets-api-crud.herokuapp.com/pets/adopt/{petId}
```

1. In your `pages/home_page.dart`, Wrap your grid view builder with a `FutureBuilder` widget.
2. Assign the `future` property to the `getPets` function we created in our provider.
3. Use the `dataSnapshot` argument to check if the data is still loading, and in this case, return a spinner. Or if there's an error, show the error in a `Text` widget.
