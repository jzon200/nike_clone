import 'package:flutter/material.dart';

import 'screens/screens.dart';
import 'shared/widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: const NikeAppBar(tabs: _tabs),
        drawer: const NikeDrawer(),
        body: const ShopScreen(tabs: _tabs),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
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
