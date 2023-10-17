import 'dart:convert';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  static const SETTINGS_KEY = "settings";
  static const HISTORY_KEY = "history";

  static late final SharedPreferences _sharedPrefs;

  PrefsService._();

  static Future<PrefsService> getInstance() async {
    final prefsService = PrefsService._();
    await prefsService._init();
    return prefsService;
  }

  Future<void> _init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
    // ..clear();
  }

  // Deletes settings and history
  Future<void> clear() async => _sharedPrefs.clear();

  Future<void> clearSettings() async => _sharedPrefs.remove(SETTINGS_KEY);

  Future<void> clearHistory() async => _sharedPrefs.remove(HISTORY_KEY);

  SettingsState getSettings() {
    final data = _sharedPrefs.getString(SETTINGS_KEY);
    final map = jsonDecode(data ?? "{}") as Map<String, dynamic>;
    return SettingsState.fromJson(map);
  }

  List<int> getHistory() {
    final data = _sharedPrefs.getStringList(HISTORY_KEY) ?? [];
    return data.map((i) => int.parse(i)).toList();
  }

  // PrefsState get() {
  //   final data = _sharedPrefs.getString(PREFS_KEY);
  //   final map = Map<String, dynamic>.from(jsonDecode(data ?? "{}"));
  //   return PrefsState.fromJson(map);
  // }

  Future<void> setSettings(SettingsState data) async {
    final dataStringified = jsonEncode(data.toJson());
    await _sharedPrefs.setString(SETTINGS_KEY, dataStringified);
  }

  Future<void> setHistory(List<int> data) async {
    final List<String> dataStringListified =
        data.map((i) => i.toString()).toList();
    await _sharedPrefs.setStringList(HISTORY_KEY, dataStringListified);
  }
}
