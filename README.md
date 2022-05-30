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


1. In your `pages/home_page.dart`, wrap your List with a `Consumer` widget 
2. Replace the provider calls in the code 
3. Then wrap the consumer with a `FutureBuilder` widget.
4. Assign the `future` property to the `getPets` function we created in our provider.
5. And in your `builder` property, return the `Consumer` widget.
6. Use the `dataSnapshot` argument to check if the data is still loading, and in this case, return a spinner. Or if there's an error, show the error in a `Text` widget.
