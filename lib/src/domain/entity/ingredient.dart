import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/ingredient.freezed.dart';
part 'generated/ingredient.g.dart';

@Freezed()
class Ingredient with _$Ingredient {
  const factory Ingredient({
    required String aisle,
    required double amount,
    required int id,
    required String image,
    required String name,
    required String original,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);
}
