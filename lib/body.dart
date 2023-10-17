import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hacksteak/widgets/feed_frame.dart';

import 'body_padding.dart';
import 'cubits/active_story_cubit.dart';
import 'cubits/prefs/settings/settings_cubit.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;
    final activeStoryId = context.watch<ActiveItemCubit>().state;

    return BodyPadding(child: Builder(builder: (context) {
      return ItemsFrame();
    }));
  }
}
