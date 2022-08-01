import 'package:flutter/material.dart';

import '../features/shop/screens/screens.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key, required this.tabs}) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        const MenScreen(),
        for (final tab in tabs.skip(1))
          Center(
            child: Text(tab),
          ),
      ],
    );
  }
}
