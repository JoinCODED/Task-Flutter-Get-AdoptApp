import 'package:adopt_app/models/pet.dart';
import "package:dio/dio.dart";

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'https://coded-pets-api-crud.herokuapp.com/';

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
}
