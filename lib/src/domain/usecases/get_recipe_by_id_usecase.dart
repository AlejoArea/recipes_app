

import '../../data/repositories/repository_imp.dart';
import '../entity/detailed_recipe.dart';
import 'usecase_interface.dart';

class GetRecipeByIdUseCase implements IUseCase<Future<FullRecipe>,int>{

  final Repository repository;

  GetRecipeByIdUseCase({
    required this.repository,
  });

  @override
  Future<FullRecipe> call([int? params]) async {
    FullRecipe recipe = await repository.getRecipeById(params!);
    return recipe;
  }
}