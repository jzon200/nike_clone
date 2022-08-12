import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

enum DrawerScreens {
  discover(
    title: 'Discover',
    routeName: '/discover',
    iconData: Icons.search_outlined,
  ),
  shop(
    title: 'Shop',
    routeName: '/shop',
    iconData: Icons.storefront,
  ),
  events(
    title: 'Events',
    routeName: '/events',
    iconData: Icons.event_outlined,
  ),
  orders(
    title: 'Orders',
    routeName: '/orders',
    iconData: BootstrapIcons.box_seam,
  ),
  favourites(
    title: 'Favourites',
    routeName: '/favourites',
    iconData: Icons.favorite_outline,
  ),
  inbox(
    title: 'Inbox',
    routeName: '/inbox',
    iconData: Icons.mail_outline,
  ),
  settings(
    title: 'Settings',
    routeName: '/settings',
    iconData: Icons.settings_outlined,
  );

  final String title;
  final String routeName;
  final IconData iconData;

  const DrawerScreens({
    this.title = '',
    required this.routeName,
    required this.iconData,
  });
}
