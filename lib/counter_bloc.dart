import 'dart:async';

enum CounterEvent { increment, decrement }

class CounterBloc {
  int maxCount = 0;
  int count = 0;

  final _inputEventController = StreamController<CounterEvent>();

  StreamSink<CounterEvent> get inputEventSink => _inputEventController.sink;

  final _outputStreamController = StreamController<int>.broadcast();

  Stream<int> get outputStateStream => _outputStreamController.stream;

  void _mapEventToState(CounterEvent event) {
    if (event == CounterEvent.increment && count < maxCount) {
      count++;
    } else if (event == CounterEvent.decrement && count > 0) {
      count--;
    }
    _outputStreamController.sink.add(count);
  }

  CounterBloc(this.maxCount) {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
    _outputStreamController.close();
  }
}
