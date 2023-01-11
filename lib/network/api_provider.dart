import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';

import '../models/university.dart';

part 'api_provider.g.dart';

@RestApi(
  baseUrl: "http://universities.hipolabs.com/search",
  parser: Parser.FlutterCompute,
)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("")
  Future<List<University>> getUniversities(@Query("country") String? country);
}

University deserializeUniversity(Map<String, dynamic> json) =>
    University.fromJson(json);

List<University> deserializeUniversityList(List<Map<String, dynamic>> json) =>
    json.map((e) => University.fromJson(e)).toList();

Map<String, dynamic> serializeUniversity(University object) => object.toJson();

List<Map<String, dynamic>> serializeUniversityList(List<University> objects) =>
    objects.map((e) => e.toJson()).toList();
