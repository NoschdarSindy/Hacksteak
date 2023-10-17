import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../prefs_service.dart';

class HistoryCubit extends Cubit<List<int>> {
  static final PrefsService _prefsService = GetIt.I<PrefsService>();

  HistoryCubit() : super(_prefsService.getHistory());

  pushVisitedItemId(itemId) async {
    if (state.contains(itemId)) return;
    final List<int> newHistory = [itemId, ...state];
    await _prefsService.setHistory(newHistory);
    emit(newHistory);
  }
}
