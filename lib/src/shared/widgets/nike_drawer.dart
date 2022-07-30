import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class NikeDrawer extends StatelessWidget {
  const NikeDrawer({Key? key}) : super(key: key);

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
          for (final item in _listTiles)
            ListTile(
              leading: Icon(item['icon'] as IconData),
              title: Text((item['title'] as String)),
              onTap: () {},
            )
        ],
      ),
    );
  }
}

const _listTiles = [
  {'title': 'Discover', 'icon': Icons.search},
  {'title': 'Shop', 'icon': Icons.storefront},
  {'title': 'Events', 'icon': Icons.event_outlined},
  {'title': 'Order', 'icon': BootstrapIcons.box_seam},
  {'title': 'Favorites', 'icon': Icons.favorite_outline},
  {'title': 'Inbox', 'icon': Icons.mail_outline},
  {'title': 'Settings', 'icon': Icons.settings_outlined},
];
