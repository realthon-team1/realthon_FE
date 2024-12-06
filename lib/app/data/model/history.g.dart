// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryImpl _$$HistoryImplFromJson(Map<String, dynamic> json) =>
    _$HistoryImpl(
      id: json['_id'] as String,
      image_query_result: ImageQueryResult.fromJson(
          json['image_query_result'] as Map<String, dynamic>),
      queries: (json['queries'] as List<dynamic>)
          .map((e) => HistoryQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoryImplToJson(_$HistoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'image_query_result': instance.image_query_result,
      'queries': instance.queries,
    };
