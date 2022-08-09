import 'package:flutter/material.dart';

import '../../../models/models.dart';
import 'animated_categories.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.category,
    required this.isExpanded,
    required this.onTap,
  }) : super(key: key);

  final ProductCategory category;
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
              decoration: category.name == 'New & Featured'
                  ? BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.25),
                          BlendMode.srcOver,
                        ),
                        alignment: const Alignment(0, -0.35),
                        image: AssetImage(category.assetName),
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
                      category.name,
                      style: textTheme.headline6?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: category.name == 'Clothing',
                    child: Positioned(
                      top: -16,
                      right: 16,
                      child: Image.asset(
                        category.assetName,
                        scale: 3.25,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: category.name != 'New & Featured' &&
                        category.name != 'Clothing',
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: AspectRatio(
                        aspectRatio: 5 / 3,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: FractionalOffset.center,
                              image: AssetImage(category.assetName),
                            ),
                          ),
                        ),
                      ),
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
        AnimatedCategories(
          items: category.subcategories,
          isExpanded: isExpanded,
        )
      ],
    );
  }
}
