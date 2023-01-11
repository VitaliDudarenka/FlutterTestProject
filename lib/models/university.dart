import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'university.freezed.dart';

part 'university.g.dart';

@freezed
class University with _$University {
  const factory University({
    @JsonKey(name: 'web_pages') required List<String> webPages,
    @JsonKey(name: 'state-province') required String? stateProvince,
    @JsonKey(name: 'alpha_two_code') required String alphaTwoCode,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'domains') required List<String> domains,
  }) = _University;

  factory University.fromJson(Map<String, dynamic> json) =>
      _$UniversityFromJson(json);
}
