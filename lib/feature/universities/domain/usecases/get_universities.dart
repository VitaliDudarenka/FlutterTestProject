import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_flutter_project/core/usecases/usecase.dart';
import 'package:test_flutter_project/feature/universities/domain/entities/university.dart';
import 'package:test_flutter_project/feature/universities/domain/repositories/university_repository.dart';

part 'get_universities.freezed.dart';

class GetUniversities
    extends UseCase<List<University>, SearchUniversityParams> {
  final UniversityRepository universityRepository;

  GetUniversities(this.universityRepository);

  @override
  Future<List<University>> call(SearchUniversityParams params) async {
    return await universityRepository.fetchUniversityList(params.country);
  }
}

@freezed
class SearchUniversityParams with _$SearchUniversityParams {
  const factory SearchUniversityParams({
    required String? country,
  }) = _SearchUniversityParams;
}
