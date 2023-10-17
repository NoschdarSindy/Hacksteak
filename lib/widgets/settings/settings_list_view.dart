import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class SettingsListView extends StatelessWidget {
  final List<Widget> children;

  const SettingsListView({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(10),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: children,
        ));
  }
}

class SettingsListTile extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Widget? navigateTo;

  const SettingsListTile(
      {Key? key,
      required this.title,
      this.leading,
      this.trailing,
      this.navigateTo,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert((navigateTo == null) || (onTap == null));

    if (navigateTo != null) {
      return OpenContainer(
        transitionType: ContainerTransitionType.fade,
        openBuilder: (context, VoidCallback openContainer) => navigateTo!,
        closedShape: const RoundedRectangleBorder(),
        closedColor: Theme.of(context).cardColor,
        closedElevation: 0.0,
        closedBuilder: (context, VoidCallback openContainer) {
          return ListTile(
            tileColor: Theme.of(context).cardColor,
            title: title,
            leading: leading,
            trailing: const Icon(Icons.chevron_right, size: 26),
            onTap: openContainer,
          );
        },
        transitionDuration: const Duration(milliseconds: 500),
      );
    }

    return ListTile(
      tileColor: Theme.of(context).cardColor,
      title: title,
      leading: leading,
      trailing: trailing,
      onTap: onTap,
    );
  }
}
