import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_flutter_project/feature/universities/domain/entities/university.dart';

part 'university_state.freezed.dart';

@freezed
class UniversityState with _$UniversityState {
  const factory UniversityState.data(List<University> data) = Data;

  const factory UniversityState.loading() = Loading;

  const factory UniversityState.error([String? message]) = Error;
}
