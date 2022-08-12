import 'package:flutter/material.dart';

import '../../features/shop/screens/screens.dart';
import '../widgets/nike_scaffold.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NikeScaffold(
      body: TabBarView(
        children: [
          const MenScreen(),
          for (final tab in NikeScaffold.tabs.skip(1))
            Center(
              child: Text(tab),
            ),
        ],
      ),
    );
  }
}
