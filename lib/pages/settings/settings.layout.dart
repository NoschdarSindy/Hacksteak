import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/cubits/logo_fade_cubit.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';

import '../../body.dart';
import '../../widgets/settings/settings_scaffold.dart';
import '../../widgets/settings/settings_section_title.dart';
import '../../widgets/settings/settings_ui.dart';

class LayoutSettings extends StatelessWidget {
  const LayoutSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const LayoutSettingsView();
  }
}

// const _paneData = {
//   "Single Pane": "Most feasible for phones.",
//   "Two Panes": "Have stories on the left and everything else on the right."
// };

class LayoutSettingsView extends StatelessWidget {
  const LayoutSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;

    return SettingsScaffold(
      fadableWidget: const Body(),
      child: SettingsUI(children: [
        const SettingsSection(title: "Maximum Width"),
        Slider(
          min: MediaQuery.of(context).size.width / 10,
          max: MediaQuery.of(context).size.width,
          value: prefs.layout.maxWidth < 0
              ? MediaQuery.of(context).size.width
              : prefs.layout.maxWidth.clamp(
                  MediaQuery.of(context).size.width / 10,
                  MediaQuery.of(context).size.width),
          onChanged: (v) {
            context
                .read<SettingsCubit>()
                .changeSettings(prefs.copyWith.layout(maxWidth: v));

            context.read<BackgroundOpacityCubit>().fadeOut();
          },
          onChangeStart: (v) {
            context.read<BackgroundOpacityCubit>().fadeOut();
          },
          onChangeEnd: (v) {
            Future.delayed(const Duration(seconds: 1),
                () => context.read<BackgroundOpacityCubit>().fadeIn());
          },
        )
      ]),
    );
  }
}
