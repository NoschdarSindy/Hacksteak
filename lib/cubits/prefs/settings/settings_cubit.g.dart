// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsStateImpl _$$SettingsStateImplFromJson(Map<String, dynamic> json) =>
    _$SettingsStateImpl(
      font: json['font'] == null
          ? const FontSettings()
          : FontSettings.fromJson(json['font'] as Map<String, dynamic>),
      theme: json['theme'] == null
          ? const ThemeSettings()
          : ThemeSettings.fromJson(json['theme'] as Map<String, dynamic>),
      layout: json['layout'] == null
          ? const Layout()
          : Layout.fromJson(json['layout'] as Map<String, dynamic>),
      appBar: json['appBar'] == null
          ? const AppBarSettings()
          : AppBarSettings.fromJson(json['appBar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SettingsStateImplToJson(_$SettingsStateImpl instance) =>
    <String, dynamic>{
      'font': instance.font,
      'theme': instance.theme,
      'layout': instance.layout,
      'appBar': instance.appBar,
    };

_$ThemeSettingsImpl _$$ThemeSettingsImplFromJson(Map<String, dynamic> json) =>
    _$ThemeSettingsImpl(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
      scheme: $enumDecodeNullable(_$FlexSchemeEnumMap, json['scheme']) ??
          FlexScheme.bahamaBlue,
    );

Map<String, dynamic> _$$ThemeSettingsImplToJson(_$ThemeSettingsImpl instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode]!,
      'scheme': _$FlexSchemeEnumMap[instance.scheme]!,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.system: 'system',
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
};

const _$FlexSchemeEnumMap = {
  FlexScheme.material: 'material',
  FlexScheme.materialHc: 'materialHc',
  FlexScheme.blue: 'blue',
  FlexScheme.indigo: 'indigo',
  FlexScheme.hippieBlue: 'hippieBlue',
  FlexScheme.aquaBlue: 'aquaBlue',
  FlexScheme.brandBlue: 'brandBlue',
  FlexScheme.deepBlue: 'deepBlue',
  FlexScheme.sakura: 'sakura',
  FlexScheme.mandyRed: 'mandyRed',
  FlexScheme.red: 'red',
  FlexScheme.redWine: 'redWine',
  FlexScheme.purpleBrown: 'purpleBrown',
  FlexScheme.green: 'green',
  FlexScheme.money: 'money',
  FlexScheme.jungle: 'jungle',
  FlexScheme.greyLaw: 'greyLaw',
  FlexScheme.wasabi: 'wasabi',
  FlexScheme.gold: 'gold',
  FlexScheme.mango: 'mango',
  FlexScheme.amber: 'amber',
  FlexScheme.vesuviusBurn: 'vesuviusBurn',
  FlexScheme.deepPurple: 'deepPurple',
  FlexScheme.ebonyClay: 'ebonyClay',
  FlexScheme.barossa: 'barossa',
  FlexScheme.shark: 'shark',
  FlexScheme.bigStone: 'bigStone',
  FlexScheme.damask: 'damask',
  FlexScheme.bahamaBlue: 'bahamaBlue',
  FlexScheme.mallardGreen: 'mallardGreen',
  FlexScheme.espresso: 'espresso',
  FlexScheme.outerSpace: 'outerSpace',
  FlexScheme.blueWhale: 'blueWhale',
  FlexScheme.sanJuanBlue: 'sanJuanBlue',
  FlexScheme.rosewood: 'rosewood',
  FlexScheme.blumineBlue: 'blumineBlue',
  FlexScheme.flutterDash: 'flutterDash',
  FlexScheme.materialBaseline: 'materialBaseline',
  FlexScheme.verdunHemlock: 'verdunHemlock',
  FlexScheme.dellGenoa: 'dellGenoa',
  FlexScheme.redM3: 'redM3',
  FlexScheme.pinkM3: 'pinkM3',
  FlexScheme.purpleM3: 'purpleM3',
  FlexScheme.indigoM3: 'indigoM3',
  FlexScheme.blueM3: 'blueM3',
  FlexScheme.cyanM3: 'cyanM3',
  FlexScheme.tealM3: 'tealM3',
  FlexScheme.greenM3: 'greenM3',
  FlexScheme.limeM3: 'limeM3',
  FlexScheme.yellowM3: 'yellowM3',
  FlexScheme.orangeM3: 'orangeM3',
  FlexScheme.deepOrangeM3: 'deepOrangeM3',
  FlexScheme.custom: 'custom',
};

_$LayoutImpl _$$LayoutImplFromJson(Map<String, dynamic> json) => _$LayoutImpl(
      singlePane: json['singlePane'] as bool? ?? true,
      maxWidth: (json['maxWidth'] as num?)?.toDouble() ?? -1,
    );

Map<String, dynamic> _$$LayoutImplToJson(_$LayoutImpl instance) =>
    <String, dynamic>{
      'singlePane': instance.singlePane,
      'maxWidth': instance.maxWidth,
    };

_$AppBarSettingsImpl _$$AppBarSettingsImplFromJson(Map<String, dynamic> json) =>
    _$AppBarSettingsImpl(
      title: json['title'] as String? ?? "Hacksteak",
    );

Map<String, dynamic> _$$AppBarSettingsImplToJson(
        _$AppBarSettingsImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };

_$FontSettingsImpl _$$FontSettingsImplFromJson(Map<String, dynamic> json) =>
    _$FontSettingsImpl(
      appBar: json['appBar'] == null
          ? const FontBase()
          : FontBase.fromJson(json['appBar'] as Map<String, dynamic>),
      storyTitle: json['storyTitle'] == null
          ? const FontBase(bold: true)
          : FontBase.fromJson(json['storyTitle'] as Map<String, dynamic>),
      storyMetadata: json['storyMetadata'] == null
          ? const FontBase()
          : FontBase.fromJson(json['storyMetadata'] as Map<String, dynamic>),
      commentMetadata: json['commentMetadata'] == null
          ? const FontBase()
          : FontBase.fromJson(json['commentMetadata'] as Map<String, dynamic>),
      commentText: json['commentText'] == null
          ? const FontBase()
          : FontBase.fromJson(json['commentText'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FontSettingsImplToJson(_$FontSettingsImpl instance) =>
    <String, dynamic>{
      'appBar': instance.appBar,
      'storyTitle': instance.storyTitle,
      'storyMetadata': instance.storyMetadata,
      'commentMetadata': instance.commentMetadata,
      'commentText': instance.commentText,
    };

_$FontBaseImpl _$$FontBaseImplFromJson(Map<String, dynamic> json) =>
    _$FontBaseImpl(
      family: json['family'] as String? ?? "",
      bold: json['bold'] as bool? ?? false,
      italic: json['italic'] as bool? ?? false,
      underline: json['underline'] as bool? ?? false,
      scale: (json['scale'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$$FontBaseImplToJson(_$FontBaseImpl instance) =>
    <String, dynamic>{
      'family': instance.family,
      'bold': instance.bold,
      'italic': instance.italic,
      'underline': instance.underline,
      'scale': instance.scale,
    };
