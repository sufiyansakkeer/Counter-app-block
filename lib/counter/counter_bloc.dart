import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial()) {
    on<Increment>((event, emit) {
      //? emit is like the set state ,it will change the ui
      //* Instead of copying an object, we can use 'copyWith()' to create new object with same properties as the original ,
      //* but with some of the values changed.
      return emit(state.copyWith(count: state.count + 1));
    });
    on<Decrement>((event, emit) {
      //? emit is like the set state ,it will change the ui
      //* Instead of copying an object, we can use 'copyWith()' to create new object with same properties as the original ,
      //* but with some of the values changed.
      final decrementedValue = state.copyWith(count: state.count - 1);
      return emit(decrementedValue);
    });
  }
}
