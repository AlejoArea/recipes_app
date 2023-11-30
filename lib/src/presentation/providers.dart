import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/entity/recipe.dart';
import '../domain/providers.dart';
import '../domain/usecases/get_recipe_usecase.dart';

final FutureProvider<List<Recipe>> recipesProvider =
    FutureProvider<List<Recipe>>((FutureProviderRef<List<Recipe>> ref) {
  final GetRecipesUseCase recipesUseCase = ref.watch(recipesUseCaseProvider);
  return recipesUseCase.call();
});
