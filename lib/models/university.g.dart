// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_University _$$_UniversityFromJson(Map<String, dynamic> json) =>
    _$_University(
      webPages:
          (json['web_pages'] as List<dynamic>).map((e) => e as String).toList(),
      stateProvince: json['state-province'] as String?,
      alphaTwoCode: json['alpha_two_code'] as String,
      name: json['name'] as String,
      country: json['country'] as String,
      domains:
          (json['domains'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_UniversityToJson(_$_University instance) =>
    <String, dynamic>{
      'web_pages': instance.webPages,
      'state-province': instance.stateProvince,
      'alpha_two_code': instance.alphaTwoCode,
      'name': instance.name,
      'country': instance.country,
      'domains': instance.domains,
    };
