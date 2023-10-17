import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';

import '../../widgets/settings/settings_font_config.dart';
import '../../widgets/settings/settings_scaffold.dart';
import '../../widgets/settings/settings_section_title.dart';
import '../../widgets/settings/settings_ui.dart';

class TopBarSettings extends StatelessWidget {
  const TopBarSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return TopBarSettingsView();
  }
}

class TopBarSettingsView extends StatelessWidget {
  TopBarSettingsView({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;

    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));

    return SettingsScaffold(
        title: "Top bar",
        child: SettingsUI(children: [
          const SettingsSection(title: "App title"),
          Focus(
            onFocusChange: (hasFocus) {
              if (!hasFocus) {
                context.read<SettingsCubit>().changeSettings(
                    prefs.copyWith.appBar(title: controller.text));
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                controller: controller
                  ..text = prefs.appBar.title
                  ..selection = TextSelection.fromPosition(
                      TextPosition(offset: controller.text.length)),
                decoration: InputDecoration(
                  fillColor: Theme.of(context).cardColor,
                ),
              ),
              //TODO: info that long titles might get truncated
            ),
          ),
          const FontConfig(component: 'appBar'),
        ]));
  }
}
