import 'package:flutter/material.dart';
import 'package:nike_clone/src/features/shop/widgets/section_card.dart';

import '../utils/utils.dart';

class SectionList extends StatelessWidget {
  const SectionList({
    Key? key,
    required this.items,
    this.height = 192,
  }) : super(key: key);

  final List items;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (_, index) {
          final item = items[index];
          // TODO: To be Simplified in the future
          final title = (item is Map) ? item['title'] : item;
          final subtitle = (item is Map) ? getCurrency(item['price']) : '';

          return SectionCard(
            title: title,
            subtitle: subtitle,
          );
        },
        separatorBuilder: (_, index) {
          return const SizedBox(width: 4.0);
        },
      ),
    );
  }
}
