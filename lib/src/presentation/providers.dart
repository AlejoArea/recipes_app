import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/entity/recipe.dart';
import '../domain/providers.dart';

final recipeProvider = FutureProvider<List<Recipe>>((ref) {
  final recipeUseCase = ref.watch(recipeUseCaseProvider);
  return recipeUseCase.getRecipes();
});
