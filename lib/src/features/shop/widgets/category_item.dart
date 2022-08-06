import 'package:flutter/material.dart';

import 'animated_categories.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.title,
    required this.items,
    required this.isExpanded,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final List<String> items;
  final bool isExpanded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          color: Colors.grey[400],
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: 96,
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    title,
                    style: textTheme.headline6?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Visibility(
          visible: !isExpanded,
          child: const SizedBox(height: 4.0),
        ),
        AnimatedCategories(items: items, isExpanded: isExpanded)
      ],
    );
  }
}
