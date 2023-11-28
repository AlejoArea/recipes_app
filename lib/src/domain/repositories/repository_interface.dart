import '../../data/model/recipe_response_model.dart';
import '../entity/recipe.dart';

abstract class IRepository {
  Future<ResponseModel> fetchRecipes();

  Future<Recipe> getRecipeById(int id);
}
