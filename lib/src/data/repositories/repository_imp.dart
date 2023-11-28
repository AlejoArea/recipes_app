// API- TO USE: https://spoonacular.com/food-api

//https://api.spoonacular.com/recipes/{id}/information?apiKey=bba7ffa1cf38426487bdd9cf45fdeef7

// https://api.spoonacular.com/recipes/complexSearch?apiKey=bba7ffa1cf38426487bdd9cf45fdeef7

import 'dart:convert';
import 'dart:io';
import 'package:recipes_practice_app/src/domain/repositories/repository_interface.dart';
import 'package:http/http.dart' as http;

class Repository implements IRepository<RecipesResponse, RecipeModel> {
  static const String apiKey = '?apiKey=bba7ffa1cf38426487bdd9cf45fdeef7';
  static const String baseUrl = 'https://api.spoonacular.com/recipes/';
  static const responseError = 'Response Error';

  @override
  Future<RecipeModel> getRecipeById(int id) async {
    final response =
        await http.get(Uri.parse('$baseUrl$id/information$apiKey'));
    if (response.statusCode == HttpStatus.ok) {
      return RecipeModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(responseError);
    }
  }

  @override
  Future<RecipesResponse> getRecipes() async {
    final response = await http.get(Uri.parse('$baseUrl/complexSearch$apiKey'));
    if (response.statusCode == HttpStatus.ok) {
      return RecipesResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(responseError);
    }
  }
}
