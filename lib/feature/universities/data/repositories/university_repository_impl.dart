import 'package:test_flutter_project/feature/universities/data/datasources/universities_remote_data_source.dart';
import 'package:test_flutter_project/feature/universities/data/mappers/university_mapper.dart';
import 'package:test_flutter_project/feature/universities/domain/entities/university.dart';
import 'package:test_flutter_project/feature/universities/domain/repositories/university_repository.dart';

class UniversityRepositoryImpl extends UniversityRepository {
  final UniversityRemoteDataSource universityRemoteDataSource;

  UniversityRepositoryImpl(this.universityRemoteDataSource);

  @override
  Future<List<University>> fetchUniversityList(String? country) async {
    final universities =
        await universityRemoteDataSource.getUniversities(country);
    return universities.toEntities();
  }
}
