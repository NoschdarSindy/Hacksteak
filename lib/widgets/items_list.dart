import 'package:flutter/material.dart';
import 'package:hacksteak/widgets/item_tile.dart';

class ItemsList extends StatefulWidget {
  ItemsList(this.itemsFuture, {super.key});

  final Future<List<int>?> Function() itemsFuture;

  @override
  State<ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  late Future<List<int>?> _getItemIds;

  @override
  initState() {
    super.initState();
    _getItemIds = widget.itemsFuture();
  }

  @override
  Widget build(BuildContext context) {
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
}

class ItemsListView extends StatelessWidget {
  const ItemsListView({
    super.key,
    required this.itemIds,
  });

  final List<int>? itemIds;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: itemIds?.length ?? 0,
      itemBuilder: (context, i) {
        final itemId = itemIds![i];

        return ItemTile(itemId: itemId);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(height: 1);
      },
    );
  }
}
