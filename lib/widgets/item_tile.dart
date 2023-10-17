import 'package:animations/animations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:hacksteak/data/api/hn/lib/api.dart';
import 'package:hacksteak/cubits/active_story_cubit.dart';
import 'package:hacksteak/cubits/prefs/history/history_cubit.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';
import 'package:hacksteak/util.dart';
import 'package:hacksteak/webview.dart';
import 'package:hacksteak/widgets/comment.dart';
import 'package:hacksteak/widgets/inherited_widgets.dart';
import 'package:hacksteak/widgets/metadata.dart';
import 'package:hacksteak/widgets/styled_text.dart';

import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants.dart';
import '../data/models/item.dart';
import '../pages/item_page.dart';

import 'item_tile_loading.dart';

class ItemTile extends StatefulWidget {
  final int itemId;

  const ItemTile({super.key, required this.itemId});

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile>
    with AutomaticKeepAliveClientMixin {
  late Future<ApiItem?> _getItemById;

  @override
  initState() {
    super.initState();
    _getItemById = GetIt.I<HnApi>().getItemById(widget.itemId);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final prefs = context.watch<SettingsCubit>().state;

    return FutureBuilder(
        future: _getItemById,
        builder: (BuildContext context, AsyncSnapshot<ApiItem?> snap) {
          Widget child;
          if (snap.hasData) {
            final item = Item.fromApi(snap.data!);
            child = ItemTileView(item);
          } else if (snap.hasError) {
            child = ListTile(
              title: const Center(
                  child: Text("Failed to load story. Tap to retry.")),
              onTap: () async {
                setState(() {
                  _getItemById = GetIt.I<HnApi>().getItemById(widget.itemId);
                });
              },
            );
          } else {
            child = ItemDetail.isDetailed(context)
                ? const SizedBox.shrink()
                : ItemsListTileViewLoading(
                    primaryHeight: FontSizes.storyTitle.spMin *
                        prefs.font.storyTitle.scale,
                    secondaryHeight: FontSizes.storyMetadata.spMin *
                        prefs.font.storyMetadata.scale);
          }

          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: child,
          );
        });
  }

  @override
  bool get wantKeepAlive => true;
}

class ItemTileView extends StatefulWidget {
  final Item item;

  const ItemTileView(this.item, {super.key});

  @override
  State<ItemTileView> createState() => _ItemTileViewState();
}

class _ItemTileViewState extends State<ItemTileView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var Item(
      :id,
      :title,
      :score,
      :host,
      :timeAgo,
      :by,
      :nDescendants,
      :url,
      :text
    ) = widget.item;

    const sep = '•';

    // print("rebuild");

    final prefs = context.watch<SettingsCubit>().state;
    final titleFont = prefs.font.storyTitle;
    final bool hasBeenVisited =
        context.watch<HistoryCubit>().state.contains(id);
    final bool isActiveStory = context.watch<ActiveItemCubit>().state == id;
    // trailing

    if (ItemDetail.isDetailed(context)) {
      // context.read<HistoryCubit>().pushVisitedItemId(widget.item.id);
      // print("jawool");
      // print(html.window.location.pathname);

      if (isActiveStory) {
        // if (!(html.window.location.pathname ?? "").contains('/item/$id'))
        //   html.window.history.pushState(null, '', 'item/$id');
        // SystemChrome.setApplicationSwitcherDescription(
        //     // html.window.history.pushState(null, '', 'item/$id');
        //     ApplicationSwitcherDescription(
        //   label: title,
        // ));
      }
    }

    final titleWidget = Text(title,
        textScaleFactor: titleFont.scale,
        style: textStyleFromFontBase(titleFont)
            .copyWith(fontSize: FontSizes.storyTitle.spMin));

    final tile = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: ItemDetail.isDetailed(context)
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListTile(
            onTap: ItemDetail.isDetailed(context)
                ? null
                : () {
                    // context.read<ActiveItemCubit>().setActiveItem(id);

                    // html.window.document.
                    // openContainer();
                    // followLink!();
                    if (defaultTargetPlatform == TargetPlatform.android ||
                        defaultTargetPlatform == TargetPlatform.iOS) {
                      context.go('/item/$id');
                    } else {
                      launchUrl(Uri.parse(url));
                    }

                    // context.go('/item/$id');
                    if (kIsWeb) {
                      // html.window.open(url, '_blank');
                      // launchUrl(Uri.parse(url), mode: LaunchMode.browser);
                    }
                  },
            textColor: hasBeenVisited && !ItemDetail.isDetailed(context)
                ? Theme.of(context).textTheme.bodySmall?.color
                : null,
            // selected: isActiveStory,
            contentPadding: EdgeInsets.all(8.spMin),
            title: ItemDetail.isDetailed(context)
                ? Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              size:
                                  FontSizes.storyTitle.spMin * titleFont.scale,
                            ),
                            onPressed: () {
                              if (kIsWeb) {
                                html.window.history.back();
                              } else {
                                context.pop();
                              }
                            },
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                titleWidget,
                              ],
                            ),
                          ),
                        ],
                      ),
                      if (text.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: HtmlParserWidget(htmlText: text),
                        )
                    ],
                  )
                : titleWidget,
            subtitle: Metadata(
              host: host,
              score: score,
              timeAgo: timeAgo,
              sep: sep,
              by: by,
              nDescendants: nDescendants,
            ),
          ),
        ),
        if (!ItemDetail.isDetailed(context))
          Link(
            uri: Uri.parse("/item/$id"),
            target: LinkTarget.blank,
            builder: (BuildContext context, FollowLink? followLink) => InkWell(
                onTap: () {
                  context.goNamed('item', pathParameters: {
                    'itemId': id.toString(),
                  }, extra: {
                    'showCommentsFirst': true
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
                  child: Icon(Icons.forum),
                )),
          ),
      ],
    );

    if (!ItemDetail.isDetailed(context)) {
      return IntrinsicHeight(child: tile);
    } else {
      final thread = Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          tile,
          const Divider(
            height: 0,
            thickness: 1,
          ),
          if (widget.item.kids.isEmpty)
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text("No comments yet."),
            )
          else
            Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: Column(
                  children: [
                    for (var kid in widget.item.kids) ...[
                      Comment(itemId: kid, level: 0),
                      const SizedBox(
                        height: 8,
                      )
                    ]
                  ],
                )),
        ],
      );
      return Title(
          color: Colors.blue,
          title: title,
          child:
              // !kIsWeb &&
              (defaultTargetPlatform == TargetPlatform.android ||
                      defaultTargetPlatform == TargetPlatform.iOS)
                  ? Stack(children: [
                      WebView(url: url),
                      ConstrainedBox(
                        constraints: BoxConstraints(minHeight: 3000),
                        child:
                            SizedBox.expand(child: Builder(builder: (context) {
                          final fracHeight =
                              30 / MediaQuery.of(context).size.height;
                          return Center(
                            child: Container(
                              child: DraggableScrollableSheet(
                                snap: true,
                                snapSizes: [fracHeight, 1.0],
                                initialChildSize:
                                    ItemDetail.showCommentsFirst(context)
                                        ? 1
                                        : fracHeight,
                                minChildSize: fracHeight,
                                maxChildSize: 1.0,
                                builder: (BuildContext context,
                                    ScrollController scrollController) {
                                  return SingleChildScrollView(
                                      controller: scrollController,
                                      child: Container(
                                        constraints: BoxConstraints(
                                            minHeight: MediaQuery.of(context)
                                                .size
                                                .height),
                                        decoration: BoxDecoration(
                                            color: Theme.of(context).cardColor,
                                            // border: Border.(
                                            //     // color: Colors.red,
                                            //     ),
                                            borderRadius:
                                                const BorderRadius.vertical(
                                                    top: Radius.circular(20))),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 30.0,
                                              child: Center(
                                                child: Container(
                                                  width: 40.0,
                                                  height: 4.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey[300],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                color:
                                                    Theme.of(context).cardColor,
                                                child: thread),
                                          ],
                                        ),
                                      )
                                      // ListView.builder(
                                      //   controller: scrollController,
                                      //   itemCount: 25,
                                      //   itemBuilder: (BuildContext context, int index) {
                                      //     return ListTile(title: Text('Item $index'));
                                      //   },
                                      // ),
                                      );
                                },
                              ),
                            ),
                          );
                        })),
                      ),
                    ])
                  : SingleChildScrollView(child: thread));
    }
  }
}
