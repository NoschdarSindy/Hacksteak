import 'package:flutter/material.dart';
import 'package:hacksteak/body_padding.dart';
import 'package:hacksteak/widgets/inherited_widgets.dart';
import 'package:hacksteak/widgets/item_tile.dart';

import '../data/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item? item;
  final id;
  final bool showCommentsFirst;

  const ItemPage(
      {super.key, this.item, this.id, this.showCommentsFirst = false});

  @override
  Widget build(BuildContext context) {
    final itemTile = ItemDetail(
      jumpToComments: showCommentsFirst,
      child: item != null ? ItemTileView(item!) : ItemTile(itemId: this.id),
    );
    return BodyPadding(
      child: SafeArea(
        child: Scaffold(

            // appBar: AppBar(
            //     title: const Text('Demo details page'),
            //     // flexibleSpace:
            //     //     Container(child: SingleChildScrollView(child: itemTile))
            // ),
            body: itemTile

            //
            // !kIsWeb &&
            //         (defaultTargetPlatform == TargetPlatform.android ||
            //             defaultTargetPlatform == TargetPlatform.iOS)
            //     ? Stack(
            //         children: [
            //           WebView(),
            //           SizedBox.expand(
            //               child: DraggableScrollableSheet(
            //             snap: true,
            //             snapSizes: [0.1, 1.0],
            //             initialChildSize: 0.1,
            //             minChildSize: 0.1,
            //             maxChildSize: 1.0,
            //             builder: (BuildContext context,
            //                 ScrollController scrollController) {
            //               return Container(
            //                 color: Colors.blue[100],
            //                 child: ListView.builder(
            //                   controller: scrollController,
            //                   itemCount: 25,
            //                   itemBuilder: (BuildContext context, int index) {
            //                     return ListTile(title: Text('Item $index'));
            //                   },
            //                 ),
            //               );
            //             },
            //           )),
            //         ],
            //       )
            //     : SingleChildScrollView(child: itemTile)
            ),
      ),
    );
  }
}
