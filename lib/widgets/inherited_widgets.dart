import 'package:flutter/widgets.dart';

class ItemDetail extends InheritedWidget {
  final bool jumpToComments;

  const ItemDetail(
      {super.key, required super.child, this.jumpToComments = false});

  static ItemDetail? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ItemDetail>();
  }

  static bool isDetailed(BuildContext context) {
    return of(context) != null;
  }

  static bool showCommentsFirst(BuildContext context) {
    final detail = of(context);
    return detail != null && detail.jumpToComments;
  }

  @override
  bool updateShouldNotify(ItemDetail oldWidget) => false;
}
