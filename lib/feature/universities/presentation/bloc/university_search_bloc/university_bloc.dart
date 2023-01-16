import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flutter_project/feature/universities/domain/usecases/get_universities.dart';
import 'package:test_flutter_project/feature/universities/presentation/bloc/university_search_bloc/university_event.dart';
import 'package:test_flutter_project/feature/universities/presentation/bloc/university_search_bloc/university_state.dart';
import 'package:test_flutter_project/resources/strings.dart';

class UniversityBloc extends Bloc<UniversityEvent, UniversityState> {
  final GetUniversities getUniversities;

  UniversityBloc(this.getUniversities)
      : super(const UniversityState.loading()) {
    on<LoadUniversities>((event, emit) async {
      emit(const UniversityState.loading());
      try {
        final universities = await getUniversities
            .call(SearchUniversityParams(country: event.country));
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
