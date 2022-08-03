import 'package:flutter/material.dart';

import 'product_card.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({Key? key, required this.productList}) : super(key: key);

  final List<Map<String, Object>> productList;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final itemWidth = size.width / 2;
    final aspectRatio = itemWidth / itemHeight;

    print(aspectRatio);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        GridView.count(
          crossAxisCount: 3,
          primary: false,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 4.0,
          childAspectRatio: aspectRatio,
          children: [
            for (final product in productList) ProductCard(product: product),
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
