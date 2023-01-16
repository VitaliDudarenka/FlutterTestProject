import 'package:test_flutter_project/feature/universities/domain/entities/university.dart';

abstract class UniversityRepository {
  Future<List<University>> fetchUniversityList(String? country);
}
