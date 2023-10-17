// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _SettingsState.fromJson(json);
}

/// @nodoc
mixin _$SettingsState {
// Common nested setting (shared across multiple components)
  FontSettings get font => throw _privateConstructorUsedError; // General
  ThemeSettings get theme => throw _privateConstructorUsedError;
  Layout get layout => throw _privateConstructorUsedError; // Component-specific
  AppBarSettings get appBar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {FontSettings font,
      ThemeSettings theme,
      Layout layout,
      AppBarSettings appBar});

  $FontSettingsCopyWith<$Res> get font;
  $ThemeSettingsCopyWith<$Res> get theme;
  $LayoutCopyWith<$Res> get layout;
  $AppBarSettingsCopyWith<$Res> get appBar;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = null,
    Object? theme = null,
    Object? layout = null,
    Object? appBar = null,
  }) {
    return _then(_value.copyWith(
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as FontSettings,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeSettings,
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as Layout,
      appBar: null == appBar
          ? _value.appBar
          : appBar // ignore: cast_nullable_to_non_nullable
              as AppBarSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FontSettingsCopyWith<$Res> get font {
    return $FontSettingsCopyWith<$Res>(_value.font, (value) {
      return _then(_value.copyWith(font: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ThemeSettingsCopyWith<$Res> get theme {
    return $ThemeSettingsCopyWith<$Res>(_value.theme, (value) {
      return _then(_value.copyWith(theme: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LayoutCopyWith<$Res> get layout {
    return $LayoutCopyWith<$Res>(_value.layout, (value) {
      return _then(_value.copyWith(layout: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppBarSettingsCopyWith<$Res> get appBar {
    return $AppBarSettingsCopyWith<$Res>(_value.appBar, (value) {
      return _then(_value.copyWith(appBar: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SettingsStateImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsStateImplCopyWith(
          _$SettingsStateImpl value, $Res Function(_$SettingsStateImpl) then) =
      __$$SettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FontSettings font,
      ThemeSettings theme,
      Layout layout,
      AppBarSettings appBar});

  @override
  $FontSettingsCopyWith<$Res> get font;
  @override
  $ThemeSettingsCopyWith<$Res> get theme;
  @override
  $LayoutCopyWith<$Res> get layout;
  @override
  $AppBarSettingsCopyWith<$Res> get appBar;
}

/// @nodoc
class __$$SettingsStateImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsStateImpl>
    implements _$$SettingsStateImplCopyWith<$Res> {
  __$$SettingsStateImplCopyWithImpl(
      _$SettingsStateImpl _value, $Res Function(_$SettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? font = null,
    Object? theme = null,
    Object? layout = null,
    Object? appBar = null,
  }) {
    return _then(_$SettingsStateImpl(
      font: null == font
          ? _value.font
          : font // ignore: cast_nullable_to_non_nullable
              as FontSettings,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeSettings,
      layout: null == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as Layout,
      appBar: null == appBar
          ? _value.appBar
          : appBar // ignore: cast_nullable_to_non_nullable
              as AppBarSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsStateImpl extends _SettingsState {
  const _$SettingsStateImpl(
      {this.font = const FontSettings(),
      this.theme = const ThemeSettings(),
      this.layout = const Layout(),
      this.appBar = const AppBarSettings()})
      : super._();

  factory _$SettingsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsStateImplFromJson(json);

// Common nested setting (shared across multiple components)
  @override
  @JsonKey()
  final FontSettings font;
// General
  @override
  @JsonKey()
  final ThemeSettings theme;
  @override
  @JsonKey()
  final Layout layout;
// Component-specific
  @override
  @JsonKey()
  final AppBarSettings appBar;

  @override
  String toString() {
    return 'SettingsState(font: $font, theme: $theme, layout: $layout, appBar: $appBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsStateImpl &&
            (identical(other.font, font) || other.font == font) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.appBar, appBar) || other.appBar == appBar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, font, theme, layout, appBar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      __$$SettingsStateImplCopyWithImpl<_$SettingsStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsStateImplToJson(
      this,
    );
  }
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {final FontSettings font,
      final ThemeSettings theme,
      final Layout layout,
      final AppBarSettings appBar}) = _$SettingsStateImpl;
  const _SettingsState._() : super._();

  factory _SettingsState.fromJson(Map<String, dynamic> json) =
      _$SettingsStateImpl.fromJson;

  @override // Common nested setting (shared across multiple components)
  FontSettings get font;
  @override // General
  ThemeSettings get theme;
  @override
  Layout get layout;
  @override // Component-specific
  AppBarSettings get appBar;
  @override
  @JsonKey(ignore: true)
  _$$SettingsStateImplCopyWith<_$SettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThemeSettings _$ThemeSettingsFromJson(Map<String, dynamic> json) {
  return _ThemeSettings.fromJson(json);
}

/// @nodoc
mixin _$ThemeSettings {
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  FlexScheme get scheme => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeSettingsCopyWith<ThemeSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeSettingsCopyWith<$Res> {
  factory $ThemeSettingsCopyWith(
          ThemeSettings value, $Res Function(ThemeSettings) then) =
      _$ThemeSettingsCopyWithImpl<$Res, ThemeSettings>;
  @useResult
  $Res call({ThemeMode themeMode, FlexScheme scheme});
}

/// @nodoc
class _$ThemeSettingsCopyWithImpl<$Res, $Val extends ThemeSettings>
    implements $ThemeSettingsCopyWith<$Res> {
  _$ThemeSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? scheme = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as FlexScheme,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeSettingsImplCopyWith<$Res>
    implements $ThemeSettingsCopyWith<$Res> {
  factory _$$ThemeSettingsImplCopyWith(
          _$ThemeSettingsImpl value, $Res Function(_$ThemeSettingsImpl) then) =
      __$$ThemeSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode, FlexScheme scheme});
}

/// @nodoc
class __$$ThemeSettingsImplCopyWithImpl<$Res>
    extends _$ThemeSettingsCopyWithImpl<$Res, _$ThemeSettingsImpl>
    implements _$$ThemeSettingsImplCopyWith<$Res> {
  __$$ThemeSettingsImplCopyWithImpl(
      _$ThemeSettingsImpl _value, $Res Function(_$ThemeSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? scheme = null,
  }) {
    return _then(_$ThemeSettingsImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as FlexScheme,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeSettingsImpl implements _ThemeSettings {
  const _$ThemeSettingsImpl(
      {this.themeMode = ThemeMode.system, this.scheme = FlexScheme.bahamaBlue});

  factory _$ThemeSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeSettingsImplFromJson(json);

  @override
  @JsonKey()
  final ThemeMode themeMode;
  @override
  @JsonKey()
  final FlexScheme scheme;

  @override
  String toString() {
    return 'ThemeSettings(themeMode: $themeMode, scheme: $scheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeSettingsImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode) &&
            (identical(other.scheme, scheme) || other.scheme == scheme));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, themeMode, scheme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeSettingsImplCopyWith<_$ThemeSettingsImpl> get copyWith =>
      __$$ThemeSettingsImplCopyWithImpl<_$ThemeSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeSettingsImplToJson(
      this,
    );
  }
}

abstract class _ThemeSettings implements ThemeSettings {
  const factory _ThemeSettings(
      {final ThemeMode themeMode,
      final FlexScheme scheme}) = _$ThemeSettingsImpl;

  factory _ThemeSettings.fromJson(Map<String, dynamic> json) =
      _$ThemeSettingsImpl.fromJson;

  @override
  ThemeMode get themeMode;
  @override
  FlexScheme get scheme;
  @override
  @JsonKey(ignore: true)
  _$$ThemeSettingsImplCopyWith<_$ThemeSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Layout _$LayoutFromJson(Map<String, dynamic> json) {
  return _Layout.fromJson(json);
}

/// @nodoc
mixin _$Layout {
  bool get singlePane => throw _privateConstructorUsedError;
  double get maxWidth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LayoutCopyWith<Layout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayoutCopyWith<$Res> {
  factory $LayoutCopyWith(Layout value, $Res Function(Layout) then) =
      _$LayoutCopyWithImpl<$Res, Layout>;
  @useResult
  $Res call({bool singlePane, double maxWidth});
}

/// @nodoc
class _$LayoutCopyWithImpl<$Res, $Val extends Layout>
    implements $LayoutCopyWith<$Res> {
  _$LayoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? singlePane = null,
    Object? maxWidth = null,
  }) {
    return _then(_value.copyWith(
      singlePane: null == singlePane
          ? _value.singlePane
          : singlePane // ignore: cast_nullable_to_non_nullable
              as bool,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LayoutImplCopyWith<$Res> implements $LayoutCopyWith<$Res> {
  factory _$$LayoutImplCopyWith(
          _$LayoutImpl value, $Res Function(_$LayoutImpl) then) =
      __$$LayoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool singlePane, double maxWidth});
}

/// @nodoc
class __$$LayoutImplCopyWithImpl<$Res>
    extends _$LayoutCopyWithImpl<$Res, _$LayoutImpl>
    implements _$$LayoutImplCopyWith<$Res> {
  __$$LayoutImplCopyWithImpl(
      _$LayoutImpl _value, $Res Function(_$LayoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? singlePane = null,
    Object? maxWidth = null,
  }) {
    return _then(_$LayoutImpl(
      singlePane: null == singlePane
          ? _value.singlePane
          : singlePane // ignore: cast_nullable_to_non_nullable
              as bool,
      maxWidth: null == maxWidth
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LayoutImpl implements _Layout {
  const _$LayoutImpl({this.singlePane = true, this.maxWidth = -1});

  factory _$LayoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayoutImplFromJson(json);

  @override
  @JsonKey()
  final bool singlePane;
  @override
  @JsonKey()
  final double maxWidth;

  @override
  String toString() {
    return 'Layout(singlePane: $singlePane, maxWidth: $maxWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayoutImpl &&
            (identical(other.singlePane, singlePane) ||
                other.singlePane == singlePane) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, singlePane, maxWidth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LayoutImplCopyWith<_$LayoutImpl> get copyWith =>
      __$$LayoutImplCopyWithImpl<_$LayoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LayoutImplToJson(
      this,
    );
  }
}

abstract class _Layout implements Layout {
  const factory _Layout({final bool singlePane, final double maxWidth}) =
      _$LayoutImpl;

  factory _Layout.fromJson(Map<String, dynamic> json) = _$LayoutImpl.fromJson;

  @override
  bool get singlePane;
  @override
  double get maxWidth;
  @override
  @JsonKey(ignore: true)
  _$$LayoutImplCopyWith<_$LayoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppBarSettings _$AppBarSettingsFromJson(Map<String, dynamic> json) {
  return _AppBarSettings.fromJson(json);
}

/// @nodoc
mixin _$AppBarSettings {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppBarSettingsCopyWith<AppBarSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppBarSettingsCopyWith<$Res> {
  factory $AppBarSettingsCopyWith(
          AppBarSettings value, $Res Function(AppBarSettings) then) =
      _$AppBarSettingsCopyWithImpl<$Res, AppBarSettings>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$AppBarSettingsCopyWithImpl<$Res, $Val extends AppBarSettings>
    implements $AppBarSettingsCopyWith<$Res> {
  _$AppBarSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppBarSettingsImplCopyWith<$Res>
    implements $AppBarSettingsCopyWith<$Res> {
  factory _$$AppBarSettingsImplCopyWith(_$AppBarSettingsImpl value,
          $Res Function(_$AppBarSettingsImpl) then) =
      __$$AppBarSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$AppBarSettingsImplCopyWithImpl<$Res>
    extends _$AppBarSettingsCopyWithImpl<$Res, _$AppBarSettingsImpl>
    implements _$$AppBarSettingsImplCopyWith<$Res> {
  __$$AppBarSettingsImplCopyWithImpl(
      _$AppBarSettingsImpl _value, $Res Function(_$AppBarSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$AppBarSettingsImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppBarSettingsImpl implements _AppBarSettings {
  const _$AppBarSettingsImpl({this.title = "Hacksteak"});

  factory _$AppBarSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppBarSettingsImplFromJson(json);

  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'AppBarSettings(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppBarSettingsImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppBarSettingsImplCopyWith<_$AppBarSettingsImpl> get copyWith =>
      __$$AppBarSettingsImplCopyWithImpl<_$AppBarSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppBarSettingsImplToJson(
      this,
    );
  }
}

abstract class _AppBarSettings implements AppBarSettings {
  const factory _AppBarSettings({final String title}) = _$AppBarSettingsImpl;

  factory _AppBarSettings.fromJson(Map<String, dynamic> json) =
      _$AppBarSettingsImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$AppBarSettingsImplCopyWith<_$AppBarSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FontSettings _$FontSettingsFromJson(Map<String, dynamic> json) {
  return _FontSettings.fromJson(json);
}

/// @nodoc
mixin _$FontSettings {
  FontBase get appBar => throw _privateConstructorUsedError;
  FontBase get storyTitle => throw _privateConstructorUsedError;
  FontBase get storyMetadata => throw _privateConstructorUsedError;
  FontBase get commentMetadata => throw _privateConstructorUsedError;
  FontBase get commentText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FontSettingsCopyWith<FontSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontSettingsCopyWith<$Res> {
  factory $FontSettingsCopyWith(
          FontSettings value, $Res Function(FontSettings) then) =
      _$FontSettingsCopyWithImpl<$Res, FontSettings>;
  @useResult
  $Res call(
      {FontBase appBar,
      FontBase storyTitle,
      FontBase storyMetadata,
      FontBase commentMetadata,
      FontBase commentText});

  $FontBaseCopyWith<$Res> get appBar;
  $FontBaseCopyWith<$Res> get storyTitle;
  $FontBaseCopyWith<$Res> get storyMetadata;
  $FontBaseCopyWith<$Res> get commentMetadata;
  $FontBaseCopyWith<$Res> get commentText;
}

/// @nodoc
class _$FontSettingsCopyWithImpl<$Res, $Val extends FontSettings>
    implements $FontSettingsCopyWith<$Res> {
  _$FontSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appBar = null,
    Object? storyTitle = null,
    Object? storyMetadata = null,
    Object? commentMetadata = null,
    Object? commentText = null,
  }) {
    return _then(_value.copyWith(
      appBar: null == appBar
          ? _value.appBar
          : appBar // ignore: cast_nullable_to_non_nullable
              as FontBase,
      storyTitle: null == storyTitle
          ? _value.storyTitle
          : storyTitle // ignore: cast_nullable_to_non_nullable
              as FontBase,
      storyMetadata: null == storyMetadata
          ? _value.storyMetadata
          : storyMetadata // ignore: cast_nullable_to_non_nullable
              as FontBase,
      commentMetadata: null == commentMetadata
          ? _value.commentMetadata
          : commentMetadata // ignore: cast_nullable_to_non_nullable
              as FontBase,
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as FontBase,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FontBaseCopyWith<$Res> get appBar {
    return $FontBaseCopyWith<$Res>(_value.appBar, (value) {
      return _then(_value.copyWith(appBar: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FontBaseCopyWith<$Res> get storyTitle {
    return $FontBaseCopyWith<$Res>(_value.storyTitle, (value) {
      return _then(_value.copyWith(storyTitle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FontBaseCopyWith<$Res> get storyMetadata {
    return $FontBaseCopyWith<$Res>(_value.storyMetadata, (value) {
      return _then(_value.copyWith(storyMetadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FontBaseCopyWith<$Res> get commentMetadata {
    return $FontBaseCopyWith<$Res>(_value.commentMetadata, (value) {
      return _then(_value.copyWith(commentMetadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FontBaseCopyWith<$Res> get commentText {
    return $FontBaseCopyWith<$Res>(_value.commentText, (value) {
      return _then(_value.copyWith(commentText: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FontSettingsImplCopyWith<$Res>
    implements $FontSettingsCopyWith<$Res> {
  factory _$$FontSettingsImplCopyWith(
          _$FontSettingsImpl value, $Res Function(_$FontSettingsImpl) then) =
      __$$FontSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FontBase appBar,
      FontBase storyTitle,
      FontBase storyMetadata,
      FontBase commentMetadata,
      FontBase commentText});

  @override
  $FontBaseCopyWith<$Res> get appBar;
  @override
  $FontBaseCopyWith<$Res> get storyTitle;
  @override
  $FontBaseCopyWith<$Res> get storyMetadata;
  @override
  $FontBaseCopyWith<$Res> get commentMetadata;
  @override
  $FontBaseCopyWith<$Res> get commentText;
}

/// @nodoc
class __$$FontSettingsImplCopyWithImpl<$Res>
    extends _$FontSettingsCopyWithImpl<$Res, _$FontSettingsImpl>
    implements _$$FontSettingsImplCopyWith<$Res> {
  __$$FontSettingsImplCopyWithImpl(
      _$FontSettingsImpl _value, $Res Function(_$FontSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appBar = null,
    Object? storyTitle = null,
    Object? storyMetadata = null,
    Object? commentMetadata = null,
    Object? commentText = null,
  }) {
    return _then(_$FontSettingsImpl(
      appBar: null == appBar
          ? _value.appBar
          : appBar // ignore: cast_nullable_to_non_nullable
              as FontBase,
      storyTitle: null == storyTitle
          ? _value.storyTitle
          : storyTitle // ignore: cast_nullable_to_non_nullable
              as FontBase,
      storyMetadata: null == storyMetadata
          ? _value.storyMetadata
          : storyMetadata // ignore: cast_nullable_to_non_nullable
              as FontBase,
      commentMetadata: null == commentMetadata
          ? _value.commentMetadata
          : commentMetadata // ignore: cast_nullable_to_non_nullable
              as FontBase,
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as FontBase,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FontSettingsImpl extends _FontSettings {
  const _$FontSettingsImpl(
      {this.appBar = const FontBase(),
      this.storyTitle = const FontBase(bold: true),
      this.storyMetadata = const FontBase(),
      this.commentMetadata = const FontBase(),
      this.commentText = const FontBase()})
      : super._();

  factory _$FontSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FontSettingsImplFromJson(json);

  @override
  @JsonKey()
  final FontBase appBar;
  @override
  @JsonKey()
  final FontBase storyTitle;
  @override
  @JsonKey()
  final FontBase storyMetadata;
  @override
  @JsonKey()
  final FontBase commentMetadata;
  @override
  @JsonKey()
  final FontBase commentText;

  @override
  String toString() {
    return 'FontSettings(appBar: $appBar, storyTitle: $storyTitle, storyMetadata: $storyMetadata, commentMetadata: $commentMetadata, commentText: $commentText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FontSettingsImpl &&
            (identical(other.appBar, appBar) || other.appBar == appBar) &&
            (identical(other.storyTitle, storyTitle) ||
                other.storyTitle == storyTitle) &&
            (identical(other.storyMetadata, storyMetadata) ||
                other.storyMetadata == storyMetadata) &&
            (identical(other.commentMetadata, commentMetadata) ||
                other.commentMetadata == commentMetadata) &&
            (identical(other.commentText, commentText) ||
                other.commentText == commentText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appBar, storyTitle,
      storyMetadata, commentMetadata, commentText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FontSettingsImplCopyWith<_$FontSettingsImpl> get copyWith =>
      __$$FontSettingsImplCopyWithImpl<_$FontSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FontSettingsImplToJson(
      this,
    );
  }
}

abstract class _FontSettings extends FontSettings {
  const factory _FontSettings(
      {final FontBase appBar,
      final FontBase storyTitle,
      final FontBase storyMetadata,
      final FontBase commentMetadata,
      final FontBase commentText}) = _$FontSettingsImpl;
  const _FontSettings._() : super._();

  factory _FontSettings.fromJson(Map<String, dynamic> json) =
      _$FontSettingsImpl.fromJson;

  @override
  FontBase get appBar;
  @override
  FontBase get storyTitle;
  @override
  FontBase get storyMetadata;
  @override
  FontBase get commentMetadata;
  @override
  FontBase get commentText;
  @override
  @JsonKey(ignore: true)
  _$$FontSettingsImplCopyWith<_$FontSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FontBase _$FontBaseFromJson(Map<String, dynamic> json) {
  return _FontBase.fromJson(json);
}

/// @nodoc
mixin _$FontBase {
  String get family => throw _privateConstructorUsedError;
  bool get bold => throw _privateConstructorUsedError;
  bool get italic => throw _privateConstructorUsedError;
  bool get underline => throw _privateConstructorUsedError;
  double get scale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FontBaseCopyWith<FontBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontBaseCopyWith<$Res> {
  factory $FontBaseCopyWith(FontBase value, $Res Function(FontBase) then) =
      _$FontBaseCopyWithImpl<$Res, FontBase>;
  @useResult
  $Res call(
      {String family, bool bold, bool italic, bool underline, double scale});
}

/// @nodoc
class _$FontBaseCopyWithImpl<$Res, $Val extends FontBase>
    implements $FontBaseCopyWith<$Res> {
  _$FontBaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? bold = null,
    Object? italic = null,
    Object? underline = null,
    Object? scale = null,
  }) {
    return _then(_value.copyWith(
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      bold: null == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: null == italic
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: null == underline
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FontBaseImplCopyWith<$Res>
    implements $FontBaseCopyWith<$Res> {
  factory _$$FontBaseImplCopyWith(
          _$FontBaseImpl value, $Res Function(_$FontBaseImpl) then) =
      __$$FontBaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String family, bool bold, bool italic, bool underline, double scale});
}

/// @nodoc
class __$$FontBaseImplCopyWithImpl<$Res>
    extends _$FontBaseCopyWithImpl<$Res, _$FontBaseImpl>
    implements _$$FontBaseImplCopyWith<$Res> {
  __$$FontBaseImplCopyWithImpl(
      _$FontBaseImpl _value, $Res Function(_$FontBaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? bold = null,
    Object? italic = null,
    Object? underline = null,
    Object? scale = null,
  }) {
    return _then(_$FontBaseImpl(
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      bold: null == bold
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool,
      italic: null == italic
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool,
      underline: null == underline
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool,
      scale: null == scale
          ? _value.scale
          : scale // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FontBaseImpl implements _FontBase {
  const _$FontBaseImpl(
      {this.family = "",
      this.bold = false,
      this.italic = false,
      this.underline = false,
      this.scale = 1});

  factory _$FontBaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FontBaseImplFromJson(json);

  @override
  @JsonKey()
  final String family;
  @override
  @JsonKey()
  final bool bold;
  @override
  @JsonKey()
  final bool italic;
  @override
  @JsonKey()
  final bool underline;
  @override
  @JsonKey()
  final double scale;

  @override
  String toString() {
    return 'FontBase(family: $family, bold: $bold, italic: $italic, underline: $underline, scale: $scale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FontBaseImpl &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.bold, bold) || other.bold == bold) &&
            (identical(other.italic, italic) || other.italic == italic) &&
            (identical(other.underline, underline) ||
                other.underline == underline) &&
            (identical(other.scale, scale) || other.scale == scale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, family, bold, italic, underline, scale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FontBaseImplCopyWith<_$FontBaseImpl> get copyWith =>
      __$$FontBaseImplCopyWithImpl<_$FontBaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FontBaseImplToJson(
      this,
    );
  }
}

abstract class _FontBase implements FontBase {
  const factory _FontBase(
      {final String family,
      final bool bold,
      final bool italic,
      final bool underline,
      final double scale}) = _$FontBaseImpl;

  factory _FontBase.fromJson(Map<String, dynamic> json) =
      _$FontBaseImpl.fromJson;

  @override
  String get family;
  @override
  bool get bold;
  @override
  bool get italic;
  @override
  bool get underline;
  @override
  double get scale;
  @override
  @JsonKey(ignore: true)
  _$$FontBaseImplCopyWith<_$FontBaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
