import '../../data/model/recipe_response_model.dart';
import '../entity/detailed_recipe.dart';

abstract class IRepository {
  Future<ResponseModel> fetchRecipes();

  Future<FullRecipe> getRecipeById(int id);
}
