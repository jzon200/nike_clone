import 'package:flutter/material.dart';

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

    // TODO: Animate Expanding State
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          child: Ink(
            height: 96,
            padding: const EdgeInsets.all(18.0),
            color: Colors.grey[400],
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
        const SizedBox(height: 4.0),
        if (isExpanded)
          for (final i in items)
            InkWell(
              onTap: () {
                // TODO: Navigate to a certain route
              },
              child: Ink(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 18.0,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Text(
                  i,
                  style: textTheme.subtitle1?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
      ],
    );
  }
}
