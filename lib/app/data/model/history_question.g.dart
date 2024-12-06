// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryQuestionImpl _$$HistoryQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryQuestionImpl(
      query: json['query'] as String,
      query_result: TextQueryResult.fromJson(
          json['query_result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HistoryQuestionImplToJson(
        _$HistoryQuestionImpl instance) =>
    <String, dynamic>{
      'query': instance.query,
      'query_result': instance.query_result,
    };
