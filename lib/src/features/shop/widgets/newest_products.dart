import 'package:flutter/material.dart';

import '../../../models/models.dart';
import 'product_thumbnail.dart';

class NewestProducts extends StatelessWidget {
  const NewestProducts({Key? key, required this.products}) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final itemWidth = size.width / 2;
    final aspectRatio = itemWidth / itemHeight;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        GridView.count(
          crossAxisCount: 3,
          primary: false,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 4.0,
          childAspectRatio: aspectRatio,
          children: [
            for (final product in products)
              ProductThumbnail(
                size: 112.0,
                product: product,
              ),
          ],
        ),
        const SizedBox(height: 16),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black38),
                borderRadius: BorderRadius.circular(24.0),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 14.0,
                horizontal: 28.0,
              ),
            ),
            child: const Text('View All'),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
