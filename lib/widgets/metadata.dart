import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hacksteak/data/api/hn/lib/api.dart';
import 'package:hacksteak/cubits/active_story_cubit.dart';
import 'package:hacksteak/cubits/prefs/history/history_cubit.dart';
import 'package:hacksteak/cubits/prefs/settings/settings_cubit.dart';
import 'package:hacksteak/util.dart';
import 'package:hacksteak/widgets/styled_text.dart';
import 'package:shimmer/shimmer.dart';
import '../constants.dart';
import '../pages/item_page.dart';
import 'inherited_widgets.dart';
import 'item_tile_loading.dart';

class Metadata extends StatelessWidget {
  const Metadata({
    super.key,
    required this.host,
    required this.score,
    required this.timeAgo,
    required this.sep,
    required this.nDescendants,
    this.by,
  });

  final String host, score, timeAgo, nDescendants, sep;
  final String? by;

  @override
  Widget build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;
    final metadataFont = prefs.font.storyMetadata;
    final fontSize =
        FontSizes.storyMetadata.spMin * prefs.font.storyMetadata.scale;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Favicon(hostUrl: host),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Wrap(children: [
            ...[score, host, timeAgo, if (ItemDetail.isDetailed(context)) by]
                .map((data) => Text(
                      '$data\u00A0$sep ',
                      style: textStyleFromFontBase(metadataFont)
                          .copyWith(fontSize: fontSize),
                    )),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.comment,
                  size: fontSize,
                ),
                Text("\u00A0$nDescendants",
                    style: textStyleFromFontBase(metadataFont)
                        .copyWith(fontSize: fontSize))
              ],
            ),
          ]),
        )
      ],
    );
  }
}

class Favicon extends StatelessWidget {
  const Favicon({
    super.key,
    required this.hostUrl,
  });

  final String hostUrl;

  @override
  build(BuildContext context) {
    final prefs = context.watch<SettingsCubit>().state;
    final scaledSize =
        FontSizes.storyMetadata.spMin * prefs.font.storyMetadata.scale * 1.3;

    return Container(
      // padding: EdgeInsets.only(
      //     top: MediaQuery.of(context).devicePixelRatio *
      //         FontSizes.storyMetadata.spMin /
      //         7),
      child: CachedNetworkImage(
        width: scaledSize,
        height: scaledSize,
        errorWidget: (context, url, error) => Icon(Icons.language,
            color: Theme.of(context).textTheme.displaySmall?.color,
            size: scaledSize * 1.1),
        imageUrl: 'https://api.faviconkit.com/$hostUrl/48',
      ),
    );
  }
}
