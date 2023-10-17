import 'dart:math';

import 'package:animations/animations.dart';
import 'package:async/async.dart';
import 'package:enhanced_future_builder/enhanced_future_builder.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_improved_scrolling/flutter_improved_scrolling.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hacksteak/data/api/hn/lib/api.dart';
import 'package:hacksteak/cubits/active_story_cubit.dart';
import 'package:hacksteak/widgets/item_tile.dart';
// import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../constants.dart';
import '../pages/item_page.dart';

class ItemsList extends StatefulWidget {
  ItemsList(this.itemsFuture, {super.key});

  final Future<List<int>?> Function() itemsFuture;

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState
    extends State<ItemsList> // with AutomaticKeepAliveClientMixin
{
  late Future<List<int>?> _getItemIds;

  @override
  initState() {
    super.initState();
    _getItemIds = widget.itemsFuture();
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);

    return RefreshIndicator(
      onRefresh: () async {
        setState(() {
          _getItemIds = widget.itemsFuture();
        });
      },
      child: FutureBuilder(
          future: _getItemIds,
          builder: (BuildContext context, AsyncSnapshot<List<int>?> snap) {
            if (snap.hasData) {
              final ids = snap.data!;
              return ItemsListView(
                itemIds: ids,
              );
            } else if (snap.hasError) {
              return InkWell(
                onTap: () async {
                  setState(() {
                    _getItemIds = widget.itemsFuture();
                  });
                },
                child: const Center(
                    child: Text("Failed to load stories. Tap to retry.")),
              );
            } else {
              return const Center(child: Text('Loading stories...'));
            }
          }),
    );
  }
//
// @override
// bool get wantKeepAlive => true;
}

class ItemsListView extends StatelessWidget {
  ItemsListView({
    super.key,
    required this.itemIds,
  });

  final List<int>? itemIds;

  @override
  Widget build(BuildContext context) {
    // print("conf");
    // print(itemIds);
    // print("rebuild");
    // final activeStoryId = context.watch<ActiveStoryCubit>().state;

    // if (titleColors.length == 0) {
    //   for (int s in (itemIds ?? [])) {
    //     titleColors.add(Colors.yellow);
    //   }
    // }
    // final scrollController = context.watch<ScrollControllerCubit>().state;

    return ListView.separated(
      // physics: const BouncingScrollPhysics(),
      // key: PageStorageKey<String>(titl),
      // controller: PrimaryScrollController.of(context),
      // _scrollController,
      // primary: true,
      // addAutomaticKeepAlives: true,
      itemCount: itemIds?.length ?? 0,
      itemBuilder: (context, i) {
        final itemId = itemIds![i];

        return Container(
            // color: activeStoryId == itemId ? Colors.green : Colors.red,
            child: ItemTile(itemId: itemId));
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider(height: 1);
      },
    );
  }
}
