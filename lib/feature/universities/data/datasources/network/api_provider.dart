import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_flutter_project/feature/universities/data/models/university.dart';

part 'api_provider.g.dart';

@RestApi(
  baseUrl: "http://universities.hipolabs.com/search",
  parser: Parser.FlutterCompute,
)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("")
  Future<List<UniversityResponse>> getUniversities(
      @Query("country") String? country);
}

UniversityResponse deserializeUniversityResponse(Map<String, dynamic> json) =>
    UniversityResponse.fromJson(json);

List<UniversityResponse> deserializeUniversityResponseList(
        List<Map<String, dynamic>> json) =>
    json.map((e) => UniversityResponse.fromJson(e)).toList();

Map<String, dynamic> serializeUniversityResponse(UniversityResponse object) =>
    object.toJson();

List<Map<String, dynamic>> serializeUniversityResponseList(
        List<UniversityResponse> objects) =>
    objects.map((e) => e.toJson()).toList();
