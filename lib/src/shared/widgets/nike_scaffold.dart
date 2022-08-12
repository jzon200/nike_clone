import 'package:flutter/material.dart';

import '../../models/drawer_screens.dart';
import '../../shared/screens/screens.dart';
import 'nike_drawer.dart';

class NikeScaffold extends StatelessWidget {
  const NikeScaffold({Key? key, required this.body}) : super(key: key);

  final Widget body;

  static const tabs = [
    'Men',
    'Women',
    'Kids',
    'Jordan',
  ];

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as DrawerScreens? ??
        DrawerScreens.shop;

    final hasDrawer = args != DrawerScreens.events &&
        args != DrawerScreens.orders &&
        args != DrawerScreens.settings;

    final isShopScreen = args == DrawerScreens.shop;
    final isFavouritesScreen = args == DrawerScreens.favourites;
    final isEventsScreen = args == DrawerScreens.events;

    final tabBar = isShopScreen
        ? TabBar(
            indicatorColor: Colors.black87,
            tabs: [
              for (final tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
          )
        : null;

    final scaffold = Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        bottom: tabBar,
        actions: [
          Visibility(
            visible: isShopScreen,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
          Visibility(
            visible: isFavouritesScreen,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
          ),
          Visibility(
            visible: isEventsScreen,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_today_outlined),
            ),
          ),
          Visibility(
            visible: hasDrawer,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, BagScreen.routeName);
              },
              icon: const Icon(Icons.shopping_bag_outlined),
            ),
          ),
        ],
      ),
      drawer: hasDrawer ? NikeDrawer(args: args) : null,
      body: body,
    );

    return isShopScreen
        ? DefaultTabController(length: tabs.length, child: scaffold)
        : scaffold;
  }
}
