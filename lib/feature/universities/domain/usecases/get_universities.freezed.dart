// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_universities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchUniversityParams {
  String? get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUniversityParamsCopyWith<SearchUniversityParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUniversityParamsCopyWith<$Res> {
  factory $SearchUniversityParamsCopyWith(SearchUniversityParams value,
          $Res Function(SearchUniversityParams) then) =
      _$SearchUniversityParamsCopyWithImpl<$Res, SearchUniversityParams>;
  @useResult
  $Res call({String? country});
}

/// @nodoc
class _$SearchUniversityParamsCopyWithImpl<$Res,
        $Val extends SearchUniversityParams>
    implements $SearchUniversityParamsCopyWith<$Res> {
  _$SearchUniversityParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchUniversityParamsCopyWith<$Res>
    implements $SearchUniversityParamsCopyWith<$Res> {
  factory _$$_SearchUniversityParamsCopyWith(_$_SearchUniversityParams value,
          $Res Function(_$_SearchUniversityParams) then) =
      __$$_SearchUniversityParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? country});
}

/// @nodoc
class __$$_SearchUniversityParamsCopyWithImpl<$Res>
    extends _$SearchUniversityParamsCopyWithImpl<$Res,
        _$_SearchUniversityParams>
    implements _$$_SearchUniversityParamsCopyWith<$Res> {
  __$$_SearchUniversityParamsCopyWithImpl(_$_SearchUniversityParams _value,
      $Res Function(_$_SearchUniversityParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_$_SearchUniversityParams(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchUniversityParams implements _SearchUniversityParams {
  const _$_SearchUniversityParams({required this.country});

  @override
  final String? country;

  @override
  String toString() {
    return 'SearchUniversityParams(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchUniversityParams &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchUniversityParamsCopyWith<_$_SearchUniversityParams> get copyWith =>
      __$$_SearchUniversityParamsCopyWithImpl<_$_SearchUniversityParams>(
          this, _$identity);
}

abstract class _SearchUniversityParams implements SearchUniversityParams {
  const factory _SearchUniversityParams({required final String? country}) =
      _$_SearchUniversityParams;

  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$_SearchUniversityParamsCopyWith<_$_SearchUniversityParams> get copyWith =>
      throw _privateConstructorUsedError;
}
