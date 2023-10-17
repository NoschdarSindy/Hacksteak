import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../app_bar.dart';
import '../body.dart';
import '../body_padding.dart';
import '../cubits/active_story_cubit.dart';
import '../cubits/prefs/settings/settings_cubit.dart';
import '../widgets/feed_frame.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
      label: "Hacksteak",
    ));

    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
          body: Container(
              color: Theme.of(context).secondaryHeaderColor,
              child: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) =>
                          [const MyAppBar()],
                  body: const Body())),
        ),
      );
    });
  }
}
