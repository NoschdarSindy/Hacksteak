import 'package:flutter_bloc/flutter_bloc.dart';

class DamnCubit extends Cubit<String> {
  DamnCubit() : super("ja");

  void changeSliderValue(newValue) {
    print("Changing value to: $newValue");
    emit(newValue);
  }
}
