import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  int maxCount = 0;

  CounterCubit(this.maxCount) : super(0);

  void increment() {
    if (state < maxCount) {
      emit(state + 1);
    }
  }

  void decrement() {
    if (state > 0) {
      emit(state - 1);
    }
  }
}
