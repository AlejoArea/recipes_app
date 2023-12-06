import '../../data/model/random_recipes_response.dart';
import '../entity/recipe.dart';
import '../repositories/repository_interface.dart';
import 'usecase_interface.dart';

class GetRandomRecipesUseCase
    implements IUseCase<Future<List<Recipe>>, dynamic> {
  IRepository repository;

  GetRandomRecipesUseCase({required this.repository});

  @override
  Future<List<Recipe>> call([params]) async {
    RandomResponseModel randomResponseModel = await repository.getRandomRecipes();
    return randomResponseModel.recipes;
  }
}
