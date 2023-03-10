import 'package:freezed_annotation/freezed_annotation.dart';

part 'university_event.freezed.dart';

@freezed
class UniversityEvent with _$UniversityEvent {
  const factory UniversityEvent.loadUniversities(String? country) = LoadUniversities;

}
