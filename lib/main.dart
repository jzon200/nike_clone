import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nike_clone/src/shared/theme/colors.dart';
import 'package:nike_clone/src/theme.dart';
import 'package:intl/intl.dart' show toBeginningOfSentenceCase;
import './src/shared/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final _tabs = const [
    'Men',
    'Women',
    'Kids',
    'Jordan',
  ];

  final _listTiles = const {
    'discover': Icons.search,
    'shop': Icons.storefront,
    'events': Icons.event_outlined,
    'orders': BootstrapIcons.box_seam,
    'favorites': Icons.favorite_outline,
    'inbox': Icons.mail_outline,
    'settings': Icons.settings_outlined,
  };

  @override
  Widget build(BuildContext context) {
    final nikeTheme = buildNikeTheme();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Clone',
      theme: nikeTheme,
      home: DefaultTabController(
        length: _tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Shop'),
            bottom: TabBar(
              indicatorColor: Colors.black87,
              tabs: [
                for (final tab in _tabs)
                  Tab(
                    text: tab,
                  )
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
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  margin: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(backgroundColor: Colors.grey, radius: 32.0),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text('Edzon Jaeve Bausa'),
                      ),
                    ],
                  ),
                ),
                ..._listTiles.entries
                    .map((e) => ListTile(
                          leading: Icon(e.value),
                          title: Text(toBeginningOfSentenceCase(e.key)!),
                          onTap: () {},
                        ))
                    .toList()
                // ..._listTiles.map((key, value) => ListTile(leading: value, title: key,))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              for (final tab in _tabs)
                Center(
                  child: Text(tab),
                ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
