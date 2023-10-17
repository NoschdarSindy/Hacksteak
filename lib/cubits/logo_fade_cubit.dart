import 'package:flutter_bloc/flutter_bloc.dart';

class LogoFadeCubit extends Cubit<double> {
  LogoFadeCubit() : super(1.0);

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
