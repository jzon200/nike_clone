import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({Key? key, required this.productList}) : super(key: key);

  final List<Map<String, Object>> productList;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final formatCurrency = NumberFormat();

    /*24 is for notification bar on Android*/
    final itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final itemWidth = size.width / 2;
    final aspectRatio = itemWidth / itemHeight;

    print(aspectRatio);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            bottom: 20.0,
          ),
          child: Text(
            'Just In',
            style: textTheme.headline6?.copyWith(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView.count(
                crossAxisCount: 3,
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 4.0,
                childAspectRatio: aspectRatio,
                children: [
                  for (final item in productList)
                    InkWell(
                      onTap: () {},
                      child: Ink(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 112,
                              color: Colors.grey[400],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 14.0,
                              ),
                              child: Text(
                                item['name'] as String,
                                style: textTheme.bodyText1?.copyWith(
                                  overflow: TextOverflow.ellipsis,
                                ),
                                maxLines: 2,
                              ),
                            ),
                            Text(
                              'PHP${formatCurrency.format(item['price'])}',
                              style: textTheme.bodyText2?.copyWith(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
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
