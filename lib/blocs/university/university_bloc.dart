import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_project/blocs/university/university_event.dart';
import 'package:test_flutter_project/blocs/university/university_state.dart';
import 'package:test_flutter_project/network/university_repository.dart';
import 'package:test_flutter_project/resources/strings.dart';

class UniversityBloc extends Bloc<UniversityEvent, UniversityState> {
  final UniversityRepository _universityRepository;

  UniversityBloc(this._universityRepository)
      : super(const UniversityState.loading()) {
    on<LoadUniversities>((event, emit) async {
      emit(const UniversityState.loading());
      try {
        final universities =
            await _universityRepository.fetchUniversityList(event.country);
        if (universities.isNotEmpty) {
          emit(UniversityState.data(universities));
        } else {
          emit(const UniversityState.error(Strings.emptyData));
        }
      } catch (e) {
        emit(UniversityState.error(e.toString()));
      }
    });
  }
}
