// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'university_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UniversityEvent {
  String? get country => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? country) loadUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? country)? loadUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? country)? loadUniversities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUniversities value) loadUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUniversities value)? loadUniversities,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUniversities value)? loadUniversities,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniversityEventCopyWith<UniversityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniversityEventCopyWith<$Res> {
  factory $UniversityEventCopyWith(
          UniversityEvent value, $Res Function(UniversityEvent) then) =
      _$UniversityEventCopyWithImpl<$Res, UniversityEvent>;
  @useResult
  $Res call({String? country});
}

/// @nodoc
class _$UniversityEventCopyWithImpl<$Res, $Val extends UniversityEvent>
    implements $UniversityEventCopyWith<$Res> {
  _$UniversityEventCopyWithImpl(this._value, this._then);

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
abstract class _$$LoadUniversitiesCopyWith<$Res>
    implements $UniversityEventCopyWith<$Res> {
  factory _$$LoadUniversitiesCopyWith(
          _$LoadUniversities value, $Res Function(_$LoadUniversities) then) =
      __$$LoadUniversitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? country});
}

/// @nodoc
class __$$LoadUniversitiesCopyWithImpl<$Res>
    extends _$UniversityEventCopyWithImpl<$Res, _$LoadUniversities>
    implements _$$LoadUniversitiesCopyWith<$Res> {
  __$$LoadUniversitiesCopyWithImpl(
      _$LoadUniversities _value, $Res Function(_$LoadUniversities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_$LoadUniversities(
      freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadUniversities implements LoadUniversities {
  const _$LoadUniversities(this.country);

  @override
  final String? country;

  @override
  String toString() {
    return 'UniversityEvent.loadUniversities(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUniversities &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadUniversitiesCopyWith<_$LoadUniversities> get copyWith =>
      __$$LoadUniversitiesCopyWithImpl<_$LoadUniversities>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? country) loadUniversities,
  }) {
    return loadUniversities(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? country)? loadUniversities,
  }) {
    return loadUniversities?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? country)? loadUniversities,
    required TResult orElse(),
  }) {
    if (loadUniversities != null) {
      return loadUniversities(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUniversities value) loadUniversities,
  }) {
    return loadUniversities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUniversities value)? loadUniversities,
  }) {
    return loadUniversities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUniversities value)? loadUniversities,
    required TResult orElse(),
  }) {
    if (loadUniversities != null) {
      return loadUniversities(this);
    }
    return orElse();
  }
}

abstract class LoadUniversities implements UniversityEvent {
  const factory LoadUniversities(final String? country) = _$LoadUniversities;

  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$LoadUniversitiesCopyWith<_$LoadUniversities> get copyWith =>
      throw _privateConstructorUsedError;
}
