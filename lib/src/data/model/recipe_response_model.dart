import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/recipe.dart';

part 'generated/recipe_response_model.freezed.dart';

part 'generated/recipe_response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    required List<Recipe> results,
    required int offset,
    required int number,
    required int totalResults,
  }) = _ResponseModel;

  factory ResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseModelFromJson(json);
}
