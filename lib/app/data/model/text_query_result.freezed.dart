// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_query_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextQueryResult _$TextQueryResultFromJson(Map<String, dynamic> json) {
  return _TextQueryResult.fromJson(json);
}

/// @nodoc
mixin _$TextQueryResult {
  String get additional_result => throw _privateConstructorUsedError;
  List<String> get additional_fish_info => throw _privateConstructorUsedError;

  /// Serializes this TextQueryResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TextQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextQueryResultCopyWith<TextQueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextQueryResultCopyWith<$Res> {
  factory $TextQueryResultCopyWith(
          TextQueryResult value, $Res Function(TextQueryResult) then) =
      _$TextQueryResultCopyWithImpl<$Res, TextQueryResult>;
  @useResult
  $Res call({String additional_result, List<String> additional_fish_info});
}

/// @nodoc
class _$TextQueryResultCopyWithImpl<$Res, $Val extends TextQueryResult>
    implements $TextQueryResultCopyWith<$Res> {
  _$TextQueryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additional_result = null,
    Object? additional_fish_info = null,
  }) {
    return _then(_value.copyWith(
      additional_result: null == additional_result
          ? _value.additional_result
          : additional_result // ignore: cast_nullable_to_non_nullable
              as String,
      additional_fish_info: null == additional_fish_info
          ? _value.additional_fish_info
          : additional_fish_info // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextQueryResultImplCopyWith<$Res>
    implements $TextQueryResultCopyWith<$Res> {
  factory _$$TextQueryResultImplCopyWith(_$TextQueryResultImpl value,
          $Res Function(_$TextQueryResultImpl) then) =
      __$$TextQueryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String additional_result, List<String> additional_fish_info});
}

/// @nodoc
class __$$TextQueryResultImplCopyWithImpl<$Res>
    extends _$TextQueryResultCopyWithImpl<$Res, _$TextQueryResultImpl>
    implements _$$TextQueryResultImplCopyWith<$Res> {
  __$$TextQueryResultImplCopyWithImpl(
      _$TextQueryResultImpl _value, $Res Function(_$TextQueryResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additional_result = null,
    Object? additional_fish_info = null,
  }) {
    return _then(_$TextQueryResultImpl(
      additional_result: null == additional_result
          ? _value.additional_result
          : additional_result // ignore: cast_nullable_to_non_nullable
              as String,
      additional_fish_info: null == additional_fish_info
          ? _value._additional_fish_info
          : additional_fish_info // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextQueryResultImpl implements _TextQueryResult {
  _$TextQueryResultImpl(
      {required this.additional_result,
      required final List<String> additional_fish_info})
      : _additional_fish_info = additional_fish_info;

  factory _$TextQueryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextQueryResultImplFromJson(json);

  @override
  final String additional_result;
  final List<String> _additional_fish_info;
  @override
  List<String> get additional_fish_info {
    if (_additional_fish_info is EqualUnmodifiableListView)
      return _additional_fish_info;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additional_fish_info);
  }

  @override
  String toString() {
    return 'TextQueryResult(additional_result: $additional_result, additional_fish_info: $additional_fish_info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextQueryResultImpl &&
            (identical(other.additional_result, additional_result) ||
                other.additional_result == additional_result) &&
            const DeepCollectionEquality()
                .equals(other._additional_fish_info, _additional_fish_info));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, additional_result,
      const DeepCollectionEquality().hash(_additional_fish_info));

  /// Create a copy of TextQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextQueryResultImplCopyWith<_$TextQueryResultImpl> get copyWith =>
      __$$TextQueryResultImplCopyWithImpl<_$TextQueryResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TextQueryResultImplToJson(
      this,
    );
  }
}

abstract class _TextQueryResult implements TextQueryResult {
  factory _TextQueryResult(
          {required final String additional_result,
          required final List<String> additional_fish_info}) =
      _$TextQueryResultImpl;

  factory _TextQueryResult.fromJson(Map<String, dynamic> json) =
      _$TextQueryResultImpl.fromJson;

  @override
  String get additional_result;
  @override
  List<String> get additional_fish_info;

  /// Create a copy of TextQueryResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextQueryResultImplCopyWith<_$TextQueryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
