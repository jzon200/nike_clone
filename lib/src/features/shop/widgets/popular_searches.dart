import 'package:flutter/material.dart';

class PopularSearches extends StatelessWidget {
  const PopularSearches({Key? key, required this.searches}) : super(key: key);

  final List<String> searches;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Popular Searches',
              style: textTheme.headline6,
            ),
          ),
          for (final item in searches)
            ListTile(
              onTap: () {
                // TODO: Add Navigation Functionality
              },
              leading: const Icon(Icons.search),
              title: Text(
                item,
                style: textTheme.subtitle2,
              ),
              contentPadding: EdgeInsets.zero,
              horizontalTitleGap: 0,
            )
        ],
      ),
    );
  }
}
