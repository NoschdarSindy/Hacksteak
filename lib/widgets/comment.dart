// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';
import 'package:hacksteak/data/api/hn/lib/api.dart';

// import 'dart:html' as html;

import '../constants.dart';
import '../data/models/item.dart';
import '../util.dart';
import 'item_tile_loading.dart';

class Comment extends StatefulWidget {
  final int itemId, level;

  const Comment({super.key, required this.itemId, required this.level});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> with AutomaticKeepAliveClientMixin {
  late Future<ApiItem?> _getComment;

  @override
  void initState() {
    super.initState();
    _getComment = GetIt.I<HnApi>().getItemById(widget.itemId);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final prefs = context.watch<SettingsCubit>().state;
    return FutureBuilder(
        future: _getComment,
        builder: (BuildContext context, AsyncSnapshot<ApiItem?> snap) {
          Widget child;
          if (snap.hasData) {
            final itemViewData = Item.fromApi(snap.data!);
            child = CommentView(
              itemViewData,
              level: widget.level,
            );
          } else if (snap.hasError) {
            child = ListTile(
              title: const Text("Failed to load comment. Tap to retry."),
              onTap: () async {
                setState(() {
                  _getComment = GetIt.I<HnApi>().getItemById(widget.itemId);
                });
              },
            );
          } else {
            final height =
                FontSizes.commentText.spMin * prefs.font.commentText.scale;
            child = ItemsListTileViewLoading(
                primaryHeight: height, secondaryHeight: height);
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

class CommentView extends StatelessWidget {
  final Item itemViewData;
  final int level;

  const CommentView(this.itemViewData, {super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    var Item(
      :id,
      :title,
      :score,
      :host,
      :timeAgo,
      :by,
      :text,
      :kids,
      :nDescendants
    ) = itemViewData;

    if (text.isEmpty) return const SizedBox.shrink();

    const sep = '•';
    final prefs = context.watch<SettingsCubit>().state;
    final commentMetadataFont = prefs.font.commentMetadata;
    final commentMetadataFontSize =
        FontSizes.commentMetadata.spMin * prefs.font.commentMetadata.scale;

    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.only(
        left: 8,
      ),
      decoration: BoxDecoration(
          border: Border(
              left: BorderSide(
        color: Theme.of(context).primaryColor,
        // commentColors[level % commentColors.length],
        width: 2.0,
      ))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("$by $sep $timeAgo",
            style: textStyleFromFontBase(commentMetadataFont).copyWith(
                color: Theme.of(context).textTheme.bodySmall?.color,
                fontSize: commentMetadataFontSize)),
        const SizedBox(height: 3),
        HtmlParserWidget(htmlText: text, isComment: true),
        Row(
          children: [
            const SizedBox(
              width: 0,
            ),
            Expanded(
                child: Column(
              children: [
                for (var c in kids)
                  Comment(
                    itemId: c,
                    level: level + 1,
                  )
              ],
            )),
          ],
        )
      ]),
    );
  }
}
