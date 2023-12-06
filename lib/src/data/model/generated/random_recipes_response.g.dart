// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../random_recipes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RandomResponseModelImpl _$$RandomResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RandomResponseModelImpl(
      recipes: (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RandomResponseModelImplToJson(
        _$RandomResponseModelImpl instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };
