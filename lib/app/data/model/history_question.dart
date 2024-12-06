import 'package:fishing/app/data/model/text_query_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_question.freezed.dart';
part 'history_question.g.dart';

@freezed
class HistoryQuestion with _$HistoryQuestion {
  factory HistoryQuestion({
    required String question,
    required TextQueryResult answer,
  }) = _HistoryQuestion;

  factory HistoryQuestion.fromJson(Map<String, dynamic> json) =>
      _$HistoryQuestionFromJson(json);
}
