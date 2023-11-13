import 'package:flutter_bloc/flutter_bloc.dart';

class BackgroundOpacityCubit extends Cubit<double> {
  BackgroundOpacityCubit() : super(1.0);

  void changeOpacity(opacity) {
    emit(opacity);
  }

  void fadeIn() {
    emit(1);
  }

  void fadeOut() {
    emit(0.5);
  }
}
