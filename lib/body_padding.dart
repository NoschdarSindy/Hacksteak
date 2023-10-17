import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/widgets/feed_frame.dart';

import 'cubits/prefs/settings/settings_cubit.dart';

class BodyPadding extends StatelessWidget {
  const BodyPadding({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;
    return Container(
        color: Theme.of(context).secondaryHeaderColor,
        padding: prefs.layout.maxWidth < 0
            ? EdgeInsets.zero
            : EdgeInsets.symmetric(
                horizontal: max(
                    0,
                    (MediaQuery.of(context).size.width -
                            prefs.layout.maxWidth) /
                        2),
              ),
        child: child);
  }
}
