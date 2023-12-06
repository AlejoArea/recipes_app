import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/recipe.dart';

part 'generated/random_recipes_response.freezed.dart';
part 'generated/random_recipes_response.g.dart';

@freezed
class RandomResponseModel with _$RandomResponseModel {
  const factory RandomResponseModel({
    required List<Recipe> recipes,
  }) = _RandomResponseModel;

  factory RandomResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RandomResponseModelFromJson(json);
}
