import 'dart:async';

import 'package:test_flutter_project/blocs/university/university_event.dart';
import 'package:test_flutter_project/blocs/university/university_state.dart';
import 'package:test_flutter_project/network/university_repository.dart';
import 'package:test_flutter_project/resources/strings.dart';

class UniversityStreamController {
  final UniversityRepository? universityRepository;

  final _inputEventController = StreamController<UniversityEvent>();

  StreamSink<UniversityEvent> get inputEventSink => _inputEventController.sink;

  final _outputStreamController = StreamController<UniversityState>.broadcast();

  Stream<UniversityState> get outputStateStream =>
      _outputStreamController.stream;

  void _mapEventToState(UniversityEvent event) {
    if (event is LoadUniversities) {
      _outputStreamController.sink.addStream(getUniversities(event.country));
    }
  }

  Stream<UniversityState> getUniversities(String? country) async* {
    try {
      final universities =
          await universityRepository!.fetchUniversityList(country);
      if (universities.isNotEmpty) {
        yield UniversityState.data(universities);
      } else {
        yield const UniversityState.error(Strings.emptyData);
      }
    } catch (e) {
      yield UniversityState.error(e.toString());
    }
  }

  UniversityStreamController(this.universityRepository) {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
    _outputStreamController.close();
  }
}
