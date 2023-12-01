// API- TO USE: https://spoonacular.com/food-api

//https://api.spoonacular.com/recipes/{id}/information?apiKey=bba7ffa1cf38426487bdd9cf45fdeef7

// https://api.spoonacular.com/recipes/complexSearch?apiKey=bba7ffa1cf38426487bdd9cf45fdeef7

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:recipes_practice_app/src/domain/repositories/repository_interface.dart';

import '../../domain/entity/detailed_recipe.dart';
import '../../domain/entity/recipe.dart';
import '../model/recipe_response_model.dart';

class Repository extends IRepository {
  static const String apiKey = '?apiKey=bba7ffa1cf38426487bdd9cf45fdeef7';
  static const String baseUrl = 'https://api.spoonacular.com/recipes/';
  static const String responseError = 'Response Error';

  @override
  Future<FullRecipe> getRecipeById(int id) async {
    final http.Response response =
        await http.get(Uri.parse('$baseUrl$id/information$apiKey'));
    if (response.statusCode == HttpStatus.ok) {
      return FullRecipe.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(responseError);
    }
  }

  @override
  Future<ResponseModel> fetchRecipes() async {
    final http.Response response = await http.get(Uri.parse('$baseUrl/complexSearch$apiKey'));
    if (response.statusCode == HttpStatus.ok) {
      return ResponseModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(responseError);
    }
  }
}
