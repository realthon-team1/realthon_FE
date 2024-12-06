import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';
part 'history.g.dart';

@freezed
class History with _$History {
  factory History({
    required int id,
    required DateTime now,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}
