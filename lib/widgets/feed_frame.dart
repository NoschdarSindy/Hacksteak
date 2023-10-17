import 'package:animations/animations.dart';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hacksteak/data/api/hn/lib/api.dart';
import 'package:hacksteak/cubits/active_story_cubit.dart';
import 'package:hacksteak/cubits/prefs/history/history_cubit.dart';

import '../constants.dart';
import '../cubits/prefs/prefs_service.dart';
import '../pages/item_page.dart';
import 'items_list.dart';

// TODO: stateful
class ItemsFrame extends StatefulWidget {
  ItemsFrame({
    super.key,
  });

  @override
  State<ItemsFrame> createState() => _ItemsFrameState();
}

class _ItemsFrameState extends State<ItemsFrame> {
  final hnApi = GetIt.I<HnApi>();

  @override
  Widget build(BuildContext context) {
    final _tabsData =
        // <String, Future<List<int>?> Function()>
        {
      "TOP": hnApi.getTopStories,
      "NEW": hnApi.getNewStories,
      "BEST": hnApi.getBestStories,
      "ASK": hnApi.getAskHNStories,
      "SHOW": hnApi.getShowHNStories,
      "JOBS": hnApi.getJobHNStories
    };

    final tabs = _tabsData.keys.map((name) => Tab(text: name)).toList();

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
            indicatorColor: Theme.of(context).primaryColor,
            isScrollable: true,
            tabs: tabs,
            onTap: (index) {
              setState(() {});
            },
          ),
        ),
        body: ClipRRect(
          child: Builder(
            builder: (context) {
              final TabController tabController =
                  DefaultTabController.of(context);

              final key = _tabsData.keys.elementAt(tabController.index);
              return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    final double movingDirection =
                        tabController.previousIndex < tabController.index
                            ? 1
                            : -1;
                    final double xOffset = animation.value == 0
                        ? movingDirection
                        : -movingDirection;

                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: Offset(
                          xOffset,
                          0.0,
                        ),
                        end: const Offset(0.0, 0.0),
                      ).animate(animation),
                      child: child,
                    );
                  },
                  child: ItemsList(_tabsData[key]!, key: ValueKey(key)));
            },
          ),
        ),
      ),
      // ),
    );
  }
}
