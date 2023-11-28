import '../../data/model/recipe_response_model.dart';
import '../../data/repositories/repository_imp.dart';
import '../entity/recipe.dart';

class GetRecipeUsecase {
  final Repository repository;

  GetRecipeUsecase({
    required this.repository,
  });

  Future<List<Recipe>> getRecipes() async {
    ResponseModel responseModel = await repository.fetchRecipes();
    return responseModel.results;
  }
}
