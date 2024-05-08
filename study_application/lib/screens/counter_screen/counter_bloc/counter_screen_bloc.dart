import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_screen_event.dart';
part 'counter_screen_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementCounterEvent>(_onIncrement);
    on<DecrementCounterEvent>(_onDecrement);
  }

  _onIncrement(IncrementCounterEvent event, Emitter<int> emit){
    emit(state+1);
  }

  _onDecrement(DecrementCounterEvent event, Emitter<int> emit){
    if(state > 0){
      emit(state-1);
    }
  }

}

