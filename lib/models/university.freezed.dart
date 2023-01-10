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

University _$UniversityFromJson(Map<String, dynamic> json) {
  return _University.fromJson(json);
}

/// @nodoc
mixin _$University {
  @JsonKey(name: 'web_pages')
  List<String> get webPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'state-province')
  String? get stateProvince => throw _privateConstructorUsedError;
  @JsonKey(name: 'alpha_two_code')
  String get alphaTwoCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'domains')
  List<String> get domains => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
  $Res call(
      {@JsonKey(name: 'web_pages') List<String> webPages,
      @JsonKey(name: 'state-province') String? stateProvince,
      @JsonKey(name: 'alpha_two_code') String alphaTwoCode,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'domains') List<String> domains});
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
    Object? webPages = null,
    Object? stateProvince = freezed,
    Object? alphaTwoCode = null,
    Object? name = null,
    Object? country = null,
    Object? domains = null,
  }) {
    return _then(_value.copyWith(
      webPages: null == webPages
          ? _value.webPages
          : webPages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stateProvince: freezed == stateProvince
          ? _value.stateProvince
          : stateProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      alphaTwoCode: null == alphaTwoCode
          ? _value.alphaTwoCode
          : alphaTwoCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      domains: null == domains
          ? _value.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call(
      {@JsonKey(name: 'web_pages') List<String> webPages,
      @JsonKey(name: 'state-province') String? stateProvince,
      @JsonKey(name: 'alpha_two_code') String alphaTwoCode,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'domains') List<String> domains});
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
    Object? webPages = null,
    Object? stateProvince = freezed,
    Object? alphaTwoCode = null,
    Object? name = null,
    Object? country = null,
    Object? domains = null,
  }) {
    return _then(_$_University(
      webPages: null == webPages
          ? _value._webPages
          : webPages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stateProvince: freezed == stateProvince
          ? _value.stateProvince
          : stateProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      alphaTwoCode: null == alphaTwoCode
          ? _value.alphaTwoCode
          : alphaTwoCode // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      domains: null == domains
          ? _value._domains
          : domains // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_University with DiagnosticableTreeMixin implements _University {
  const _$_University(
      {@JsonKey(name: 'web_pages') required final List<String> webPages,
      @JsonKey(name: 'state-province') required this.stateProvince,
      @JsonKey(name: 'alpha_two_code') required this.alphaTwoCode,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'domains') required final List<String> domains})
      : _webPages = webPages,
        _domains = domains;

  factory _$_University.fromJson(Map<String, dynamic> json) =>
      _$$_UniversityFromJson(json);

  final List<String> _webPages;
  @override
  @JsonKey(name: 'web_pages')
  List<String> get webPages {
    if (_webPages is EqualUnmodifiableListView) return _webPages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_webPages);
  }

  @override
  @JsonKey(name: 'state-province')
  final String? stateProvince;
  @override
  @JsonKey(name: 'alpha_two_code')
  final String alphaTwoCode;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'country')
  final String country;
  final List<String> _domains;
  @override
  @JsonKey(name: 'domains')
  List<String> get domains {
    if (_domains is EqualUnmodifiableListView) return _domains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_domains);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'University(webPages: $webPages, stateProvince: $stateProvince, alphaTwoCode: $alphaTwoCode, name: $name, country: $country, domains: $domains)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'University'))
      ..add(DiagnosticsProperty('webPages', webPages))
      ..add(DiagnosticsProperty('stateProvince', stateProvince))
      ..add(DiagnosticsProperty('alphaTwoCode', alphaTwoCode))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('domains', domains));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_University &&
            const DeepCollectionEquality().equals(other._webPages, _webPages) &&
            (identical(other.stateProvince, stateProvince) ||
                other.stateProvince == stateProvince) &&
            (identical(other.alphaTwoCode, alphaTwoCode) ||
                other.alphaTwoCode == alphaTwoCode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            const DeepCollectionEquality().equals(other._domains, _domains));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_webPages),
      stateProvince,
      alphaTwoCode,
      name,
      country,
      const DeepCollectionEquality().hash(_domains));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      __$$_UniversityCopyWithImpl<_$_University>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniversityToJson(
      this,
    );
  }
}

abstract class _University implements University {
  const factory _University(
          {@JsonKey(name: 'web_pages') required final List<String> webPages,
          @JsonKey(name: 'state-province') required final String? stateProvince,
          @JsonKey(name: 'alpha_two_code') required final String alphaTwoCode,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'country') required final String country,
          @JsonKey(name: 'domains') required final List<String> domains}) =
      _$_University;

  factory _University.fromJson(Map<String, dynamic> json) =
      _$_University.fromJson;

  @override
  @JsonKey(name: 'web_pages')
  List<String> get webPages;
  @override
  @JsonKey(name: 'state-province')
  String? get stateProvince;
  @override
  @JsonKey(name: 'alpha_two_code')
  String get alphaTwoCode;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'domains')
  List<String> get domains;
  @override
  @JsonKey(ignore: true)
  _$$_UniversityCopyWith<_$_University> get copyWith =>
      throw _privateConstructorUsedError;
}
