// Default settings are stored here
part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    // Common nested setting (shared across multiple components)
    @Default(FontSettings()) FontSettings font,

    // General
    @Default(ThemeSettings()) ThemeSettings theme,
    @Default(Layout()) Layout layout,

    // Component-specific
    @Default(AppBarSettings()) AppBarSettings appBar,
  }) = _SettingsState;

  updateFontOf(Map<String, dynamic> arg) {
    Function.apply(copyWith.font, null,
        arg.map((component, newFont) => MapEntry(Symbol(component), newFont)));
  }

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);
}

@freezed
class ThemeSettings with _$ThemeSettings {
  const factory ThemeSettings({
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(FlexScheme.bahamaBlue) FlexScheme scheme,
  }) = _ThemeSettings;

  factory ThemeSettings.fromJson(Map<String, dynamic> json) =>
      _$ThemeSettingsFromJson(json);
}

@freezed
class Layout with _$Layout {
  const factory Layout({
    @Default(true) bool singlePane,
    @Default(-1) double maxWidth,
  }) = _Layout;

  factory Layout.fromJson(Map<String, dynamic> json) => _$LayoutFromJson(json);
}

@freezed
class AppBarSettings with _$AppBarSettings {
  const factory AppBarSettings({
    @Default("Hacksteak") String title,
  }) = _AppBarSettings;

  factory AppBarSettings.fromJson(Map<String, dynamic> json) =>
      _$AppBarSettingsFromJson(json);
}

@freezed
class FontSettings with _$FontSettings {
  const FontSettings._();

  const factory FontSettings({
    @Default(FontBase()) FontBase appBar,
    @Default(FontBase(bold: true)) FontBase storyTitle,
    @Default(FontBase()) FontBase storyMetadata,
    @Default(FontBase()) FontBase commentMetadata,
    @Default(FontBase()) FontBase commentText,
  }) = _FontSettings;

  dynamic operator [](String attribute) {
    return toJson()[attribute];
  }

  factory FontSettings.fromJson(Map<String, dynamic> json) =>
      _$FontSettingsFromJson(json);
}

@freezed
class FontBase with _$FontBase {
  const factory FontBase({
    @Default("") String family,
    @Default(false) bool bold,
    @Default(false) bool italic,
    @Default(false) bool underline,
    @Default(1) double scale,
  }) = _FontBase;

  factory FontBase.fromJson(Map<String, dynamic> json) =>
      _$FontBaseFromJson(json);
}
