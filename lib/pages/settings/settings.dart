import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';
import 'package:hacksteak/pages/settings/settings.comments.dart';
import 'package:hacksteak/pages/settings/settings.layout.dart';
import 'package:hacksteak/pages/settings/settings.story_tiles.dart';
import 'package:hacksteak/pages/settings/settings.theme.dart';
import 'package:hacksteak/pages/settings/settings.top_bar.dart';

import '../../cubits/logo_fade_cubit.dart';
import '../../widgets/settings/settings_list_view.dart';
import '../../widgets/settings/settings_scaffold.dart';
import '../../widgets/settings/settings_section_title.dart';
import '../../widgets/settings/settings_ui.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => BackgroundOpacityCubit(),
      ),
    ], child: Builder(builder: (context) => SettingsPageView()));
  }
}

class SettingsPageView extends StatelessWidget {
  const SettingsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final opacityLevel = context.watch<BackgroundOpacityCubit>().state;

    return SettingsScaffold(
        child: Stack(
      children: [
        AnimatedOpacity(
          opacity: 1 - opacityLevel,
          duration: const Duration(seconds: 1),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                color: Colors.blue,
                child: const SizedBox(
                  height: 200,
                  width: 200,
                ),
              )
            ],
          ),
        ),
        AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 1),
            child: const SettingsUI(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Slider(
                  //   min: 0,
                  //   max: 0.5,
                  //   value: prefs.layout.horizPaddingFactor,
                  //   onChanged: (v) {
                  //     context.read<PrefsCubit>().changePrefs(
                  //         prefs.copyWith.layout(horizPaddingFactor: v));
                  //   },
                  //   onChangeStart: (v) {
                  //     context.read<LogoFadeCubit>().changeOpacity(0.5);
                  //   },
                  //   onChangeEnd: (v) {
                  //     Future.delayed(
                  //         const Duration(seconds: 1),
                  //         () =>
                  //             context.read<LogoFadeCubit>().changeOpacity(1.0));
                  //   },
                  // ),
                  SettingsSection(title: "GENERAL"),
                  SettingsListView(children: [
                    SettingsListTile(
                      title: Text('Theme'),
                      leading: Icon(Icons.brush),
                      navigateTo: ThemeSettingsPage(),
                    ),
                    SettingsListTile(
                      title: Text('Layout'),
                      leading: Icon(
                        Icons.dashboard,
                      ),
                      navigateTo: LayoutSettings(),
                    ),
                  ]),
                  SettingsSection(title: "LOOK AND FEEL"),
                  SettingsListView(children: [
                    SettingsListTile(
                      title: Text('Top Bar'),
                      leading: Icon(
                        Icons.web_asset,
                      ),
                      navigateTo: TopBarSettings(),
                    ),
                    SettingsListTile(
                      title: Text('Story Tiles'),
                      leading: Icon(Icons.table_rows),
                      navigateTo: FeedSettings(),
                    ),
                    SettingsListTile(
                      title: Text('Comments'),
                      leading: Icon(Icons.article_outlined),
                      navigateTo: CommentsSettings(),
                    ),
                  ]),
                  // SettingsSection(title: "BEHAVIOR"),
                  // SettingsListView(children: [
                  //   SettingsListTile(
                  //     title: Text('Story Tabs'),
                  //     leading: Icon(Icons.tab),
                  //     navigateTo: ThemeSettingsPage(),
                  //   ),
                  // ])
                ])),
      ],
    ));
  }
}
