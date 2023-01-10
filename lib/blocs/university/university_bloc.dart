import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_project/blocs/university/university_event.dart';
import 'package:test_flutter_project/blocs/university/university_state.dart';
import 'package:test_flutter_project/network/university_repository.dart';

class UniversityBloc extends Bloc<UniversityEvent, UniversityState> {
  final UniversityRepository _universityRepository;

  UniversityBloc(this._universityRepository)
      : super(const UniversityState.loading()) {
    on<LoadUniversities>((event, emit) async {
      emit(const UniversityState.loading());
      try {
        final universities = await _universityRepository.fetchUniversityList(event.country);
        emit(UniversityState.data(universities));
      } catch (e) {
        emit(UniversityState.error(e.toString()));
      }
    });
  }
}
