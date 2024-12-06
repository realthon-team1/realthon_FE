// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_query_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageQueryResultImpl _$$ImageQueryResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageQueryResultImpl(
      fish_name: json['fish_name'] as String,
      fishing_avaliability: json['fishing_avaliability'] as bool,
      fish_description: json['fish_description'] as String,
      fish_questions: (json['fish_questions'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ImageQueryResultImplToJson(
        _$ImageQueryResultImpl instance) =>
    <String, dynamic>{
      'fish_name': instance.fish_name,
      'fishing_avaliability': instance.fishing_avaliability,
      'fish_description': instance.fish_description,
      'fish_questions': instance.fish_questions,
    };
