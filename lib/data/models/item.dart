// Validation happens here
// import 'dart:ffi';

import 'package:hacksteak/data/api/hn/lib/api.dart';

import '../../constants.dart';

class Item {
  final ApiItem apiItem;
  late final int id;
  late final String title, score, host, timeAgo, by, nDescendants, text, url;
  late final List<int> kids;

  Item.fromApi(this.apiItem) {
    final ApiItem(
      :id,
      :title,
      :score,
      :time,
      :url,
      :type,
      :by,
      :descendants,
      :kids,
      :text,
    ) = apiItem;

    this.id = id ?? -1;
    this.title = title ?? '';
    this.score = score != null ? pl(score, "pt") : '';
    host = Uri.parse(url ?? 'https://news.ycombinator.com')
        .host
        .replaceFirst('www.', '');
    timeAgo = ago(time);
    this.by = by ?? '';
    nDescendants = descendants?.toString() ?? '';
    this.text = text ?? '';
    this.kids = kids;
    this.url = url ?? "https://news.ycombinator.com/item?id=$id";
  }
}
