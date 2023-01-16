import 'package:test_flutter_project/feature/universities/data/models/university.dart';
import 'package:test_flutter_project/feature/universities/domain/entities/university.dart';

extension UniversityMapping on UniversityResponse {
  University toEntity() {
    return University(webPage: webPages.first, name: name, country: country);
  }
}

extension UniversityListMapping on List<UniversityResponse> {
  List<University> toEntities() {
    return map((item) => item.toEntity()).toList();
  }
}
