// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_query_result.freezed.dart';
part 'image_query_result.g.dart';

@freezed
class ImageQueryResult with _$ImageQueryResult {
  factory ImageQueryResult({
    required String fish_name,
    required bool fishing_avaliability,
    required String fish_description,
    required List<String> fish_questions,
  }) = _ImageQueryResult;

  factory ImageQueryResult.fromJson(Map<String, dynamic> json) =>
      _$ImageQueryResultFromJson(json);
}
