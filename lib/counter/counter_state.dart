part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    required int count,
  }) = _CounterState;

//? here we are assigning the state initial value is 0 ,
//? also we need to tell the block also our initial value
  factory CounterState.initial() => const CounterState(count: 0);
}
