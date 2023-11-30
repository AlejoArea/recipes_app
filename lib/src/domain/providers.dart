import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipes_practice_app/src/domain/usecases/get_recipe_by_id_usecase.dart';

import '../data/repositories/repository_imp.dart';
import 'usecases/get_recipe_usecase.dart';

final Provider<GetRecipesUseCase> recipesUseCaseProvider = Provider<GetRecipesUseCase>((ProviderRef<GetRecipesUseCase> ref) {
  final Repository repository = Repository();
  return GetRecipesUseCase(repository: repository);
});
final Provider<GetRecipeByIdUseCase> recipesByIdUseCaseProvider = Provider<GetRecipeByIdUseCase>((ProviderRef<GetRecipeByIdUseCase> ref) {
  final Repository repository = Repository();
  return GetRecipeByIdUseCase(repository: repository);
});