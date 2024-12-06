import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_query_result.freezed.dart';
part 'text_query_result.g.dart';

@freezed
class TextQueryResult with _$TextQueryResult {
  factory TextQueryResult({
    required String additional_result,
    required List<String> additional_fish_info,
  }) = _TextQueryResult;

  factory TextQueryResult.fromJson(Map<String, dynamic> json) =>
      _$TextQueryResultFromJson(json);
}
