import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/recipe.freezed.dart';

part 'generated/recipe.g.dart';

@Freezed()
class Recipe with _$Recipe {
  const factory Recipe({
    required int id,
    required String title,
    required String imageType,
  }) = _Recipe;

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);
}
