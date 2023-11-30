

import '../../data/repositories/repository_imp.dart';
import '../entity/recipe.dart';
import 'usecase_interface.dart';

class GetRecipeByIdUseCase implements IUseCase{

  final Repository repository;

  GetRecipeByIdUseCase({
    required this.repository,
  });

  @override
  Future<Recipe> call([params]) async {
    Recipe recipe = await repository.getRecipeById(params);
    return recipe;
  }
}