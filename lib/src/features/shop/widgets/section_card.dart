import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    Key? key,
    required this.title,
    this.subtitle = '',
    this.width = 144.0,
    this.height = 144.0,
  }) : super(key: key);

  final String title;
  final String subtitle;
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
              title,
              style: textTheme.subtitle2,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Visibility(
              visible: subtitle.isNotEmpty,
              child: const SizedBox(height: 8.0),
            ),
            Visibility(
              visible: subtitle.isNotEmpty,
              child: Text(
                subtitle,
                style: textTheme.bodyText2?.copyWith(
                  color: Colors.grey,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
