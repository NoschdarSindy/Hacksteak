import 'package:flutter_bloc/flutter_bloc.dart';

class ActiveItemCubit extends Cubit<int> {
  ActiveItemCubit() : super(-1);

  void setActiveItem(int itemId) {
    emit(itemId);
  }
}
