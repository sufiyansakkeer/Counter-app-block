import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  //her we assigning to block InitialState so that the initial value will be the initialState's value
  CounterBloc() : super(InitialState()) {
    //here on function will manage the events,
    // ? after on event we need to tell which event function is working
    on<Increment>((event, emit) {
      //* emit is like a set state it will update the ui according to the event
      // here state is getter ,using that getter we get count value
      final currentState = state.count;
      final incrementedState = currentState + 1;
      return emit(CounterState(count: incrementedState));
    });
    on<Decrement>((event, emit) {
      final currentState = state.count;
      final decrementedState = currentState - 1;
      return emit(CounterState(count: decrementedState));
    });
  }
}
