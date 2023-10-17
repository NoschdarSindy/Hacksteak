import 'dart:math';

import 'package:animations/animations.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hacksteak/pages/settings/settings.dart';
import 'package:hacksteak/util.dart';
import 'package:hacksteak/widgets/styled_text.dart';

// import 'package:pixel_snap/pixel_snap.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
// import 'package:space_fixer/space_fixer.dart';

import 'constants.dart';
import 'cubits/prefs/settings/settings_cubit.dart';

class _ActionData {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  _ActionData({
    required this.label,
    required this.icon,
    required this.onPressed,
  });
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;

    final appBarActions = {
      // 'login': _ActionData(
      //   label: "Login",
      //   icon: Icons.login,
      //   onPressed: () => print("Login"),
      // ),
      // 'search': _ActionData(
      //   label: "Search",
      //   icon: Icons.search,
      //   onPressed: () => print("Search"),
      // ),
      // 'toggleTheme': _ActionData(
      //   label: "Dark Mode",
      //   icon: Icons.dark_mode,
      //   onPressed: () => print("Dark Mode"),
      // ),
      'settings': _ActionData(
        label: "Settings",
        icon: Icons.settings,
        onPressed: () {},
      ),
    };

    // final ps = PixelSnap.of(context);

    double width = MediaQuery.of(context).size.width;
    double overflowHeight = 3;
    var overflowColor = Theme.of(context).appBarTheme.backgroundColor!;

    return SliverPadding(
      padding: prefs.layout.maxWidth < 0
          ? EdgeInsets.zero
          : EdgeInsets.symmetric(
              horizontal: max(
                  0,
                  (MediaQuery.of(context).size.width - prefs.layout.maxWidth) /
                      2)),
      sliver: SliverAppBar(
        title: Text(
          prefs.appBar.title,
          style: textStyleFromFontBase(prefs.font.appBar),
          textScaleFactor: prefs.font.appBar.scale,
        ),
        actions: [
          if (ResponsiveBreakpoints.of(context).largerThan(XS))
            Row(
              // backgroundColor: Colors.transparent,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.end,
              // shrinkWrap: true,
              children: [
                for (var a in appBarActions.values)
                  AppBarButton(
                      icon: a.icon, label: a.label, onPressed: a.onPressed),
              ],
            )
          else
            PopupMenuButton(
              onSelected: (item) => appBarActions[item]!.onPressed,
              itemBuilder: (context) => [
                for (var e in appBarActions.entries)
                  PopupMenuItem(
                      onTap: () {
                        context.go("/settings");
                      },
                      value: e.key,
                      child: Row(children: [
                        Icon(e.value.icon),
                        const SizedBox(width: 8),
                        Text(e.value.label)
                      ]))
              ],
              offset: const Offset(0.0, kToolbarHeight),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppBarButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const AppBarButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType,
      openBuilder: (context, VoidCallback openContainer) {
        return SettingsPage();
      },
      closedColor: Theme.of(context).appBarTheme.backgroundColor!,
      // Theme.of(context).colorScheme.primary,
      // Colors.transparent,
      closedElevation: 0.0,
      closedShape: const RoundedRectangleBorder(),
      closedBuilder: (context, VoidCallback openContainer) {
        if (ResponsiveBreakpoints.of(context).largerThan(S)) {
          return TextButton.icon(
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).appBarTheme.foregroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            icon: Icon(icon),
            label: Text(label),
            onPressed: openContainer,
          );
        }
        return Ink(
          decoration: BoxDecoration(
            color:
                // Colors.transparent,
                Theme.of(context).appBarTheme.backgroundColor,
            shape: BoxShape.rectangle,
          ),
          child: IconButton(
            icon: Icon(icon),
            color: Colors.white,
            onPressed: openContainer,
          ),
        );
      },
      transitionDuration: const Duration(seconds: 1),
    );
  }
}
