// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryQuestion _$HistoryQuestionFromJson(Map<String, dynamic> json) {
  return _HistoryQuestion.fromJson(json);
}

/// @nodoc
mixin _$HistoryQuestion {
  String get query => throw _privateConstructorUsedError;
  TextQueryResult get query_result => throw _privateConstructorUsedError;

  /// Serializes this HistoryQuestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryQuestionCopyWith<HistoryQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryQuestionCopyWith<$Res> {
  factory $HistoryQuestionCopyWith(
          HistoryQuestion value, $Res Function(HistoryQuestion) then) =
      _$HistoryQuestionCopyWithImpl<$Res, HistoryQuestion>;
  @useResult
  $Res call({String query, TextQueryResult query_result});

  $TextQueryResultCopyWith<$Res> get query_result;
}

/// @nodoc
class _$HistoryQuestionCopyWithImpl<$Res, $Val extends HistoryQuestion>
    implements $HistoryQuestionCopyWith<$Res> {
  _$HistoryQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? query_result = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      query_result: null == query_result
          ? _value.query_result
          : query_result // ignore: cast_nullable_to_non_nullable
              as TextQueryResult,
    ) as $Val);
  }

  /// Create a copy of HistoryQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextQueryResultCopyWith<$Res> get query_result {
    return $TextQueryResultCopyWith<$Res>(_value.query_result, (value) {
      return _then(_value.copyWith(query_result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryQuestionImplCopyWith<$Res>
    implements $HistoryQuestionCopyWith<$Res> {
  factory _$$HistoryQuestionImplCopyWith(_$HistoryQuestionImpl value,
          $Res Function(_$HistoryQuestionImpl) then) =
      __$$HistoryQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, TextQueryResult query_result});

  @override
  $TextQueryResultCopyWith<$Res> get query_result;
}

/// @nodoc
class __$$HistoryQuestionImplCopyWithImpl<$Res>
    extends _$HistoryQuestionCopyWithImpl<$Res, _$HistoryQuestionImpl>
    implements _$$HistoryQuestionImplCopyWith<$Res> {
  __$$HistoryQuestionImplCopyWithImpl(
      _$HistoryQuestionImpl _value, $Res Function(_$HistoryQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? query_result = null,
  }) {
    return _then(_$HistoryQuestionImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      query_result: null == query_result
          ? _value.query_result
          : query_result // ignore: cast_nullable_to_non_nullable
              as TextQueryResult,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryQuestionImpl implements _HistoryQuestion {
  _$HistoryQuestionImpl({required this.query, required this.query_result});

  factory _$HistoryQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryQuestionImplFromJson(json);

  @override
  final String query;
  @override
  final TextQueryResult query_result;

  @override
  String toString() {
    return 'HistoryQuestion(query: $query, query_result: $query_result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryQuestionImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.query_result, query_result) ||
                other.query_result == query_result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, query, query_result);

  /// Create a copy of HistoryQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryQuestionImplCopyWith<_$HistoryQuestionImpl> get copyWith =>
      __$$HistoryQuestionImplCopyWithImpl<_$HistoryQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryQuestionImplToJson(
      this,
    );
  }
}

abstract class _HistoryQuestion implements HistoryQuestion {
  factory _HistoryQuestion(
      {required final String query,
      required final TextQueryResult query_result}) = _$HistoryQuestionImpl;

  factory _HistoryQuestion.fromJson(Map<String, dynamic> json) =
      _$HistoryQuestionImpl.fromJson;

  @override
  String get query;
  @override
  TextQueryResult get query_result;

  /// Create a copy of HistoryQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryQuestionImplCopyWith<_$HistoryQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
