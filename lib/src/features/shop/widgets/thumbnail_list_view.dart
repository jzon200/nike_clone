import 'package:flutter/material.dart';

import '../../../models/models.dart';
import 'product_thumbnail.dart';
import 'widgets.dart';

class ThumbnailListView extends StatelessWidget {
  const ThumbnailListView({
    Key? key,
    required this.items,
    this.size = 192,
  }) : super(key: key);

  final List items;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (_, index) {
          final item = items[index];

          final thumbnail = item is Product
              ? ProductThumbnail(product: item)
              : SimpleThumbnail(data: item);

          return thumbnail;
        },
        separatorBuilder: (_, index) {
          return const SizedBox(width: 4.0);
        },
      ),
    );
  }
}
