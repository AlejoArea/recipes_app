import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient.dart';

part 'generated/detailed_recipe.freezed.dart';

part 'generated/detailed_recipe.g.dart';

@Freezed()
class FullRecipe with _$FullRecipe {
  const factory FullRecipe({
    required int id,
    required String title,
    required String image,
    required int servings,
    required int readyInMinutes,
    required num healthScore,
    required num pricePerServing,
    required bool cheap,
    required bool dairyFree,
    required bool glutenFree,
    required bool vegan,
    required bool vegetarian,
    required List<String> dishTypes,
    required List<Ingredient> extendedIngredients,
    required String summary,
  }) = _FullRecipe;

  factory FullRecipe.fromJson(Map<String, dynamic> json) =>
      _$FullRecipeFromJson(json);
}