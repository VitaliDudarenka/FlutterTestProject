// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$University {
  String get webPage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversityCopyWith<University> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityCopyWith<$Res> {
  factory $UniversityCopyWith(
          University value, $Res Function(University) then) =
      _$UniversityCopyWithImpl<$Res, University>;
  @useResult
  $Res call({String webPage, String name, String country});
}

/// @nodoc
class _$UniversityCopyWithImpl<$Res, $Val extends University>
    implements $UniversityCopyWith<$Res> {
  _$UniversityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webPage = null,
    Object? name = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      webPage: null == webPage
          ? _value.webPage
          : webPage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniversityCopyWith<$Res>
    implements $UniversityCopyWith<$Res> {
  factory _$$_UniversityCopyWith(
          _$_University value, $Res Function(_$_University) then) =
      __$$_UniversityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String webPage, String name, String country});
}

/// @nodoc
class __$$_UniversityCopyWithImpl<$Res>
    extends _$UniversityCopyWithImpl<$Res, _$_University>
    implements _$$_UniversityCopyWith<$Res> {
  __$$_UniversityCopyWithImpl(
      _$_University _value, $Res Function(_$_University) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webPage = null,
    Object? name = null,
    Object? country = null,
  }) {
    return _then(_$_University(
      webPage: null == webPage
          ? _value.webPage
          : webPage // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_University implements _University {
  const _$_University(
      {required this.webPage, required this.name, required this.country});

  @override
  final String webPage;
  @override
  final String name;
  @override
  final String country;

  @override
  String toString() {
    return 'University(webPage: $webPage, name: $name, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_University &&
            (identical(other.webPage, webPage) || other.webPage == webPage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, webPage, name, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      __$$_UniversityCopyWithImpl<_$_University>(this, _$identity);
}

abstract class _University implements University {
  const factory _University(
      {required final String webPage,
      required final String name,
      required final String country}) = _$_University;

  @override
  String get webPage;
  @override
  String get name;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      throw _privateConstructorUsedError;
}
