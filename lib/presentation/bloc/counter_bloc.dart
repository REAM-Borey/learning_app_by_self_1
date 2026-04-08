import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_flutter_1/presentation/bloc/counter_event.dart';
import 'package:learning_flutter_1/presentation/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });
    on<DecrementCounterEvent>((event, emit) {
      if (state.counter > 0) {
        emit(state.copyWith(counter: state.counter - 1));
      }
    });
  }
}
