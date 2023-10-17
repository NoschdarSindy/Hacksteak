import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'dart:html' as html;

class ActiveItemCubit extends Cubit<int> {
  ActiveItemCubit() : super(-1);

  void setActiveItem(int itemId) {
    print("setting " + itemId.toString() + " as active story");
    emit(itemId);
  }
}
