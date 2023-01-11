import 'dart:isolate';

import 'package:dio/dio.dart';
import 'package:test_flutter_project/network/api_provider.dart';

import '../models/university.dart';

class UniversityRepository {
  final _dio = Dio();

  Future<List<University>> fetchUniversityList(String? country) {
    _dio.interceptors.add(LogInterceptor(responseBody: false));
    final client = RestClient(_dio);
    return client.getUniversities(country);
  }
}

class NetworkError extends Error {}