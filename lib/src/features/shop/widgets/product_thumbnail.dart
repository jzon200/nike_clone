import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../models/product.dart';
import '../../../theme/colors.dart';
import '../utils/utils.dart';

class ProductThumbnail extends StatelessWidget {
  const ProductThumbnail({
    Key? key,
    required this.product,
    this.size = 144.0,
  }) : super(key: key);

  final Product product;
  final double size;

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
            product.images != null
                ? FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: product.images!.first,
                    width: size,
                    height: size,
                    fit: BoxFit.cover,
                  )
                : Container(
                    height: size,
                    color: lightGrey,
                  ),
            const SizedBox(height: 8.0),
            Text(
              product.name,
              style: textTheme.subtitle2,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            Text(
              getCurrency(product.price),
              style: textTheme.bodyText2?.copyWith(
                color: Colors.grey,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
