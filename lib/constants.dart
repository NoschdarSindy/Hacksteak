import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

const String XS = 'XS', S = 'S', M = 'M', L = 'L', XL = 'XL', XXL = 'XXL';
const transitionType = ContainerTransitionType.fade;

// util
pl(int n, String sg) => '$n\u{00A0}${n == 1 ? sg : '${sg}s'}';

ago(int? timestampSeconds) => timestampSeconds != null
    ? timeago.format(
        DateTime.fromMillisecondsSinceEpoch(timestampSeconds * 1000),
        locale: 'en_short')
    : null;

const commentColors = [
  Colors.yellow,
  Colors.blue,
  Colors.red,
  Colors.green,
];

// Always apply spMin for setting font sizes. The font sizes are not relative to each other
class FontSizes {
  static const storyTitle = 20,
      storyMetadata = 14,
      commentMetadata = 10,
      commentText = 16;
}
