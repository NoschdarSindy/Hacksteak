import 'dart:math';

import 'package:flutter/material.dart';

class SettingsUI extends StatelessWidget {
  final List<Widget> children;

  const SettingsUI({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: max(8, (MediaQuery.of(context).size.width - 500) / 2),
      ).copyWith(bottom: 20),
      child: Column(
        children: children,
      ),
    );
  }
}
