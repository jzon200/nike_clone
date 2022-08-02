import 'package:flutter/material.dart';

import 'screens/screens.dart';
import 'shared/widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: const Scaffold(
        appBar: NikeAppBar(tabs: _tabs),
        drawer: NikeDrawer(),
        body: ShopScreen(tabs: _tabs),
      ),
    );
  }
}

const _tabs = [
  'Men',
  'Women',
  'Kids',
  'Jordan',
];
