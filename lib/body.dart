import 'package:flutter/material.dart';
import 'package:hacksteak/widgets/feed_frame.dart';

import 'body_padding.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BodyPadding(child: Builder(builder: (context) {
      return ItemsFrame();
    }));
  }
}
