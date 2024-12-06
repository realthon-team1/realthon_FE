// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryQuestionImpl _$$HistoryQuestionImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryQuestionImpl(
      question: json['question'] as String,
      answer: TextQueryResult.fromJson(json['answer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HistoryQuestionImplToJson(
        _$HistoryQuestionImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
    };
