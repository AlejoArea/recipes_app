import '../../data/model/recipe_response_model.dart';

import '../entity/recipe.dart';
import '../repositories/repository_interface.dart';
import 'usecase_interface.dart';

class GetRecipesUseCase implements IUseCase<Future<List<Recipe>>, int> {
  final IRepository repository;

  GetRecipesUseCase({
    required this.repository,
  });

  @override
  Future<List<Recipe>> call([int? params]) async {
    ResponseModel responseModel = await repository.fetchRecipes();
    return responseModel.results;
  }
}
