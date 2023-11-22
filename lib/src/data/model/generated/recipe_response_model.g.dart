// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../recipe_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseModelImpl _$$ResponseModelImplFromJson(Map<String, dynamic> json) =>
    _$ResponseModelImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      offset: json['offset'] as int,
      number: json['number'] as int,
      totalResults: json['totalResults'] as int,
    );

Map<String, dynamic> _$$ResponseModelImplToJson(_$ResponseModelImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'offset': instance.offset,
      'number': instance.number,
      'totalResults': instance.totalResults,
    };
