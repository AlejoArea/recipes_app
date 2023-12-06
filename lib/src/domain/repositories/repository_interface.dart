import '../../data/model/random_recipes_response.dart';
import '../../data/model/recipe_response_model.dart';
import '../entity/detailed_recipe.dart';

abstract class IRepository {
  Future<ResponseModel> fetchRecipes();

  Future<FullRecipe> getRecipeById(int id);

  Future<RandomResponseModel> getRandomRecipes();
}
