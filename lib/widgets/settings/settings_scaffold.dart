import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/util.dart';
import 'package:hacksteak/widgets/styled_text.dart';

import '../../cubits/logo_fade_cubit.dart';
import '../../cubits/prefs/settings/settings_cubit.dart';

class SettingsScaffold extends StatelessWidget {
  final String title;
  final Widget child;
  final Widget? fadableWidget;

  const SettingsScaffold(
      {super.key,
      this.title = "Settings",
      required this.child,
      this.fadableWidget});

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;
    final opacityLevel = context.watch<LogoFadeCubit>().state;

    return Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        appBar: AppBar(
          title: Text(
            title,
            style: textStyleFromFontBase(prefs.font.appBar),
            textScaleFactor: prefs.font.appBar.scale,
          ),
        ),
        body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: fadableWidget != null
                ? Stack(
                    children: [
                      IgnorePointer(
                        child: AnimatedOpacity(
                            opacity: 1 - opacityLevel,
                            duration: const Duration(seconds: 1),
                            child: SizedBox(
                                width: double.infinity,
                                height: MediaQuery.of(context).size.height -
                                    kToolbarHeight,
                                child: fadableWidget)),
                      ),
                      AnimatedOpacity(
                          opacity: opacityLevel,
                          duration: const Duration(seconds: 1),
                          child: child),
                    ],
                  )
                : child));
  }
}
