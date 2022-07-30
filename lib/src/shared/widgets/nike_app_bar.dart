import 'package:flutter/material.dart';

class NikeAppBar extends StatelessWidget with PreferredSizeWidget {
  const NikeAppBar({Key? key, required this.tabs}) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Shop'),
      bottom: TabBar(
        indicatorColor: Colors.black87,
        tabs: [
          for (final tab in tabs)
            Tab(
              text: tab,
            ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag_outlined),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
