import 'package:adopt_app/models/pet.dart';
import "package:dio/dio.dart";

class DioClient {
  final Dio _dio = Dio();


  Future<List<Pet>> getPets() async {
    List<Pet> pets = [];
    try {
      Response response =  await _dio.get("https://coded-pets-api-crud.eapi.joincoded.com/pets");
      pets = (response.data as List).map((pet) => Pet.fromJson(pet)).toList();
    } on DioError catch (error) {
      print(error);
    }
    return pets;
  }
}
