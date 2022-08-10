import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../models/thumbnail.dart';
import '../../../theme/colors.dart';

class SimpleThumbnail extends StatelessWidget {
  const SimpleThumbnail({
    Key? key,
    required this.data,
    this.size = 144.0,
  }) : super(key: key);

  final double size;
  final Thumbnail data;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        // TODO: Add Navigation Functionality
      },
      child: Ink(
        width: size,
        height: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            data.imageSrc != null
                ? FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: data.imageSrc!,
                    width: size,
                    fit: BoxFit.cover,
                    height: size,
                  )
                : Container(
                    height: size,
                    color: lightGrey,
                  ),
            const SizedBox(height: 8.0),
            Text(
              data.title,
              style: textTheme.subtitle2,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
