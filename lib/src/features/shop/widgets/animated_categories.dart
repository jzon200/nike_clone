import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../theme/colors.dart';

class AnimatedCategories extends HookWidget {
  const AnimatedCategories({
    Key? key,
    required this.items,
    required this.isExpanded,
  }) : super(key: key);

  final List<String> items;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final textTheme = Theme.of(context).textTheme;

    if (isExpanded) {
      animationController.animateTo(
        1,
        curve: Curves.fastOutSlowIn,
      );
    } else {
      animationController.animateBack(
        0,
        curve: Curves.fastOutSlowIn,
      );
    }

    return SizeTransition(
      sizeFactor: animationController,
      child: Column(
        children: [
          for (final i in items)
            InkWell(
              onTap: () {
                // TODO: Navigate to a certain route
              },
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: lightGrey),
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 18.0,
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
      ),
    );
  }
}
