import 'package:flutter/material.dart';

import '../../../models/models.dart';
import '../utils/utils.dart';
import 'section_card.dart';

class SectionList extends StatelessWidget {
  const SectionList({
    Key? key,
    required this.items,
    this.height = 192,
  }) : super(key: key);

  final List items;
  final double height;

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
          late String primaryText;
          String? secondaryText;
          String? tertiaryText;

          if (item is DiscountedProduct) {
            primaryText = item.name;
            secondaryText = getCurrency(item.price);
            tertiaryText = getCurrency(item.discountedPrice);
          } else if (item is Product) {
            primaryText = item.name;
            secondaryText = getCurrency(item.price);
          } else if (item is Highlight) {
            primaryText = item.title;
          } else {
            primaryText = item;
          }

          return SectionCard(
            primaryText: primaryText,
            secondaryText: secondaryText,
            tertiaryText: tertiaryText,
          );
        },
        separatorBuilder: (_, index) {
          return const SizedBox(width: 4.0);
        },
      ),
    );
  }
}
