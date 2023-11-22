// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IngredientImpl _$$IngredientImplFromJson(Map<String, dynamic> json) =>
    _$IngredientImpl(
      aisle: json['aisle'] as String,
      amount: (json['amount'] as num).toDouble(),
      id: json['id'] as int,
      image: json['image'] as String,
      name: json['name'] as String,
      original: json['original'] as String,
    );

Map<String, dynamic> _$$IngredientImplToJson(_$IngredientImpl instance) =>
    <String, dynamic>{
      'aisle': instance.aisle,
      'amount': instance.amount,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'original': instance.original,
    };
