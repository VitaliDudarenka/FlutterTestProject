import 'package:freezed_annotation/freezed_annotation.dart';

part 'university.freezed.dart';

@freezed
class University with _$University {
  const factory University({
    required String webPage,
    required String name,
    required String country,
  }) = _University;
}
