import 'package:dio/dio.dart';
import 'package:test_flutter_project/feature/universities/data/datasources/network/api_provider.dart';
import 'package:test_flutter_project/feature/universities/data/models/university.dart';


abstract class UniversityRemoteDataSource {
  Future<List<UniversityResponse>> getUniversities(String? country);
}

class UniversityRemoteDataSourceImpl extends UniversityRemoteDataSource {
  final _dio = Dio();

  @override
  Future<List<UniversityResponse>> getUniversities(String? country) {
    _dio.interceptors.add(LogInterceptor(responseBody: false));
    final client = RestClient(_dio);
    return client.getUniversities(country);
  }
}
