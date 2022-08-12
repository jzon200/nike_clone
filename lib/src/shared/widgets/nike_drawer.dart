import 'package:flutter/material.dart';

import '../../models/drawer_screens.dart';

class NikeDrawer extends StatelessWidget {
  const NikeDrawer({Key? key, required this.args}) : super(key: key);

  final DrawerScreens args;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 32.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text('Edzon Jaeve Bausa'),
                ),
              ],
            ),
          ),
          for (final drawerScreen in DrawerScreens.values)
            ListTile(
              leading: Icon(drawerScreen.iconData),
              title: Text((drawerScreen.title)),
              selected: drawerScreen.routeName == args.routeName,
              selectedColor: Colors.black,
              selectedTileColor: Colors.grey[350],
              onTap: () {
                Navigator.popAndPushNamed(
                  context,
                  drawerScreen.routeName,
                  arguments: drawerScreen,
                );
              },
            )
        ],
      ),
    );
  }
}
