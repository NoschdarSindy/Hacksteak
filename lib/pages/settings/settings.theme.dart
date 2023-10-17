import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';

import '../../widgets/settings/settings_list_view.dart';
import '../../widgets/settings/settings_scaffold.dart';
import '../../widgets/settings/settings_section_title.dart';
import '../../widgets/settings/settings_ui.dart';

class _ColorData {
  final FlexScheme scheme;

  final FlexSchemeData schemeData;

  const _ColorData({
    required this.scheme,
    required this.schemeData,
  });
}

final _themeModesData = {
  "System": ThemeMode.system,
  "Light": ThemeMode.light,
  "Dark": ThemeMode.dark,
};

class ThemeSettingsPage extends StatelessWidget {
  const ThemeSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeSettingsView();
  }
}

class ThemeSettingsView extends StatelessWidget {
  const ThemeSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;

    final colorDataList = FlexColor.schemes.entries.map((entry) {
      return _ColorData(
        scheme: entry.key,
        schemeData: entry.value,
      );
    }).toList();

    return SettingsScaffold(
      child: SettingsUI(children: [
        const SettingsSection(title: "THEME MODE"),
        SettingsListView(
          children: [
            for (final (mode) in _themeModesData.entries)
              RadioListTile(
                  title: Text(mode.key),
                  value: _themeModesData[mode.key],
                  secondary: Icon(mode.value == ThemeMode.light
                      ? Icons.light_mode
                      : mode.value == ThemeMode.dark
                          ? Icons.dark_mode
                          : null),
                  groupValue: prefs.theme.themeMode,
                  onChanged: (newValue) {
                    if (newValue != null) {
                      context.read<SettingsCubit>().changeSettings(
                          prefs.copyWith.theme(themeMode: newValue));
                    }
                  }),
          ],
        ),
        const SettingsSection(title: "COLOR SCHEME"),
        SettingsListView(
            children: colorDataList
                .map((theme) => RadioListTile(
                    value: theme.scheme,
                    groupValue: prefs.theme.scheme,
                    secondary: _SchemeColorBox(theme: theme),
                    title: Text(theme.schemeData.name),
                    // leading: _SchemeColorBox(theme: theme),
                    onChanged: (FlexScheme? scheme) {
                      if (scheme != null) {
                        context.read<SettingsCubit>().changeSettings(
                            prefs.copyWith.theme(scheme: scheme));
                      }
                    }))
                .toList())
      ]),
    );
  }
}

class _SchemeColorBox extends StatelessWidget {
  const _SchemeColorBox({
    required this.theme,
  });

  final _ColorData theme;

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;

    final schemeData =
        MediaQuery.of(context).platformBrightness == Brightness.dark
            ? theme.schemeData.dark
            : theme.schemeData.light;

    return InkWell(
        onTap: () {
          context
              .read<SettingsCubit>()
              .changeSettings(prefs.copyWith.theme(scheme: theme.scheme));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _ColorTile(color: schemeData.primary),
                  _ColorTile(color: schemeData.primaryContainer),
                ],
              ),
              Column(mainAxisSize: MainAxisSize.min, children: [
                _ColorTile(color: schemeData.secondary),
                _ColorTile(color: schemeData.tertiary),
              ]),
            ],
          ),
        ));
  }
}

class _ColorTile extends StatelessWidget {
  const _ColorTile({
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      color: color,
      margin: const EdgeInsets.all(0.5),
    );
  }
}
