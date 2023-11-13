import 'package:flutter/material.dart';

import '../../widgets/settings/settings_font_config.dart';
import '../../widgets/settings/settings_scaffold.dart';
import '../../widgets/settings/settings_ui.dart';
import '../item_page.dart';

class CommentsSettings extends StatelessWidget {
  const CommentsSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommentsSettingsView();
  }
}

class CommentsSettingsView extends StatelessWidget {
  const CommentsSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    // final prefs = context.watch<SettingsCubit>().state;
    return const SettingsScaffold(
        fadableWidget: ItemPage(id: 1, showCommentsFirst: true),
        title: "Comments",
        child: SettingsUI(children: [
          FontConfig(prefix: "Metadata", component: 'commentMetadata'),
          FontConfig(prefix: "Text", component: 'commentText'),
        ]));
  }
}
