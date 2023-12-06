import '../entity/detailed_recipe.dart';
import '../repositories/repository_interface.dart';
import 'usecase_interface.dart';

class GetRecipeByIdUseCase implements IUseCase<Future<FullRecipe>, int> {
  final IRepository repository;

  GetRecipeByIdUseCase({
    required this.repository,
  });

  @override
  Future<FullRecipe> call([int? params]) async {
    FullRecipe recipe = await repository.getRecipeById(params!);
    return recipe;
  }
}
