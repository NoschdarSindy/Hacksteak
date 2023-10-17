import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';

import '../../body.dart';
import '../../cubits/logo_fade_cubit.dart';
import '../../widgets/settings/settings_font_config.dart';
import '../../widgets/settings/settings_scaffold.dart';
import '../../widgets/settings/settings_section_title.dart';
import '../../widgets/settings/settings_ui.dart';

class FeedSettings extends StatelessWidget {
  const FeedSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeedSettingsView();
  }
}

class FeedSettingsView extends StatelessWidget {
  const FeedSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    // final prefs = context.watch<SettingsCubit>().state;
    return const SettingsScaffold(
        fadableWidget: Body(),
        title: "Story Tiles",
        child: SettingsUI(children: [
          FontConfig(prefix: "Title", component: 'storyTitle'),
          FontConfig(prefix: "Metadata", component: 'storyMetadata'),
        ]));
  }
}
