part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

//*here we need to declare only the events, the actions will be in block only
class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}
