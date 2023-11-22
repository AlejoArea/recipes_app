// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../detailed_recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FullRecipeImpl _$$FullRecipeImplFromJson(Map<String, dynamic> json) =>
    _$FullRecipeImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      image: json['image'] as String,
      servings: json['servings'] as int,
      readyInMinutes: json['readyInMinutes'] as int,
      healthScore: json['healthScore'] as num,
      pricePerServing: json['pricePerServing'] as num,
      cheap: json['cheap'] as bool,
      dairyFree: json['dairyFree'] as bool,
      glutenFree: json['glutenFree'] as bool,
      vegan: json['vegan'] as bool,
      vegetarian: json['vegetarian'] as bool,
      dishTypes:
          (json['dishTypes'] as List<dynamic>).map((e) => e as String).toList(),
      extendedIngredients: (json['extendedIngredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: json['summary'] as String,
    );

Map<String, dynamic> _$$FullRecipeImplToJson(_$FullRecipeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'servings': instance.servings,
      'readyInMinutes': instance.readyInMinutes,
      'healthScore': instance.healthScore,
      'pricePerServing': instance.pricePerServing,
      'cheap': instance.cheap,
      'dairyFree': instance.dairyFree,
      'glutenFree': instance.glutenFree,
      'vegan': instance.vegan,
      'vegetarian': instance.vegetarian,
      'dishTypes': instance.dishTypes,
      'extendedIngredients': instance.extendedIngredients,
      'summary': instance.summary,
    };
