import 'package:bloc/bloc.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hacksteak/cubits/prefs/prefs_service.dart';

part 'settings_state.dart';

part 'settings_cubit.freezed.dart';

part 'settings_cubit.g.dart';

class SettingsCubit extends Cubit<SettingsState> {
  static final PrefsService _prefsService = GetIt.I<PrefsService>();

  SettingsCubit() : super(_prefsService.getSettings());

  Future<void> changeSettings(SettingsState settings) async {
    await _prefsService.setSettings(settings);
    emit(settings);
  }

  Future<void> changeFontOf(Map<String, dynamic> arg) async {
    changeSettings(Function.apply(
        _prefsService.getSettings().copyWith.font,
        null,
        arg.map((component, newFont) => MapEntry(Symbol(component), newFont))));
  }

  Future<void> resetSettings() async {
    await _prefsService.clearSettings();
    emit(const SettingsState());
  }
}
