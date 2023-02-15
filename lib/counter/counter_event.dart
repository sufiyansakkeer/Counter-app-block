part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  //* Here we add the all events that need to be executed
  const factory CounterEvent.increment() = Increment;
  const factory CounterEvent.decrement() = Decrement;
}
