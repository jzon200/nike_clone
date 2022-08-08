import 'package:flutter/material.dart';

import 'animated_categories.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.items,
    required this.title,
    required this.image,
    required this.isExpanded,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String image;
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
              padding: const EdgeInsets.only(left: 16.0),
              decoration: title == 'New & Featured'
                  ? BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.25),
                          BlendMode.srcOver,
                        ),
                        alignment: const Alignment(0, -0.35),
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    )
                  : null,
              width: double.infinity,
              height: 112,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: textTheme.headline6?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: title == 'Clothing',
                    child: Positioned(
                      top: -16,
                      right: 16,
                      child: Image.asset(
                        image,
                        scale: 3.25,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: title != 'New & Featured' && title != 'Clothing',
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(image),
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
