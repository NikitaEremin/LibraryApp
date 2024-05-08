part of 'counter_screen_bloc.dart';

class CounterState{
    CounterState({required this.counter});
    final int counter;
}


class CounterInitial extends CounterState{
  CounterInitial({required super.counter});

}

class CurrentCounter extends CounterState{
  CurrentCounter({required super.counter});

}