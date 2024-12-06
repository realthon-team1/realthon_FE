// ignore_for_file: invalid_annotation_target

import 'package:fishing/app/data/model/history_question.dart';
import 'package:fishing/app/data/model/image_query_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';
part 'history.g.dart';

@freezed
class History with _$History {
  factory History({
    @JsonKey(name: "_id") required String id,
    required ImageQueryResult image_query_result,
    required List<HistoryQuestion> queries,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}
