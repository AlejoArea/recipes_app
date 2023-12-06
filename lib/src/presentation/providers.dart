import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/entity/detailed_recipe.dart';
import '../domain/entity/recipe.dart';
import '../domain/providers.dart';
import '../domain/usecases/get_random_recipes_usecase.dart';
import '../domain/usecases/get_recipe_by_id_usecase.dart';
import '../domain/usecases/get_recipe_usecase.dart';

final FutureProvider<List<Recipe>> recipesProvider =
    FutureProvider<List<Recipe>>((FutureProviderRef<List<Recipe>> ref) {
  final GetRecipesUseCase recipesUseCase = ref.watch(recipesUseCaseProvider);
  return recipesUseCase.call();
});

final FutureProvider<List<Recipe>> randomRecipesProvider =
    FutureProvider<List<Recipe>>((FutureProviderRef<List<Recipe>> ref) {
  final GetRandomRecipesUseCase recipesUseCase =
      ref.watch(randomRecipesUseCaseProvider);
  return recipesUseCase.call();
});

final FutureProviderFamily<FullRecipe, int> recipeByIdProvider =
    FutureProvider.family<FullRecipe, int>(
        (FutureProviderRef<FullRecipe> ref, int recipeId) {
  final GetRecipeByIdUseCase recipeByIdUseCase =
      ref.watch(recipesByIdUseCaseProvider);
  return recipeByIdUseCase.call(recipeId);
});
