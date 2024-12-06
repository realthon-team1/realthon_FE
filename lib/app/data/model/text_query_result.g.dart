// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_query_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextQueryResultImpl _$$TextQueryResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TextQueryResultImpl(
      additional_result: json['additional_result'] as String,
      additional_fish_info: (json['additional_fish_info'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$TextQueryResultImplToJson(
        _$TextQueryResultImpl instance) =>
    <String, dynamic>{
      'additional_result': instance.additional_result,
      'additional_fish_info': instance.additional_fish_info,
    };
