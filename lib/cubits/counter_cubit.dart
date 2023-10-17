import 'package:flutter_bloc/flutter_bloc.dart';

//Cubit that stores an int. In this case, the int is the number of times the user has pressed the button.
//Initial state: 0
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    emit(state + 1);
  }
}
