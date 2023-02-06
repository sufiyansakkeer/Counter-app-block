part of 'counter_bloc.dart';

//* here counter state is the base class(Parent class) ,
//* we extends this counter state to use the other state,
//* we will declare here the all the value's we gonna use
class CounterState {
  final int count;

  CounterState({required this.count});
}

//here we created initial state for giving initial value to the counter, and we assign 0 to count variable
class InitialState extends CounterState {
  InitialState() : super(count: 0);
}
