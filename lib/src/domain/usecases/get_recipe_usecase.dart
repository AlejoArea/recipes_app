import '../../data/model/recipe_response_model.dart';
import '../../data/repositories/repository_imp.dart';
import '../entity/recipe.dart';
import 'usecase_interface.dart';

class GetRecipesUseCase implements IUseCase<Future<List<Recipe>>,int> {
  final Repository repository;

  GetRecipesUseCase({
    required this.repository,
  });

  @override
  Future<List<Recipe>> call([int? params]) async {
    ResponseModel responseModel = await repository.fetchRecipes();
    return responseModel.results;
  }
}
