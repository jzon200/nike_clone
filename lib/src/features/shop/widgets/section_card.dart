import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    Key? key,
    required this.primaryText,
    this.secondaryText,
    this.tertiaryText,
    this.width = 144.0,
    this.height = 144.0,
  }) : super(key: key);

  final String primaryText;
  final String? secondaryText;
  final String? tertiaryText;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        // TODO: Add Navigation Functionality
      },
      child: Ink(
        width: width,
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height,
              color: lightGrey,
              margin: const EdgeInsets.only(bottom: 8.0),
            ),
            Text(
              primaryText,
              style: textTheme.subtitle2,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Visibility(
              visible: secondaryText != null,
              child: const SizedBox(height: 8.0),
            ),
            Visibility(
              visible: secondaryText != null && tertiaryText == null,
              child: Text(
                secondaryText ?? '',
                style: textTheme.bodyText2?.copyWith(
                  color: Colors.grey,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Visibility(
              visible: tertiaryText != null,
              child: RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: '$secondaryText\t\t\t',
                  style: textTheme.bodyText2?.copyWith(
                    color: Colors.grey[600],
                  ),
                  children: [
                    TextSpan(
                      text: tertiaryText,
                      style: textTheme.bodyText2?.copyWith(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
