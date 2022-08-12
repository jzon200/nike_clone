import 'package:flutter/material.dart';

import 'src/models/drawer_screens.dart';
import 'src/shared/screens/screens.dart';
import 'src/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nikeTheme = buildNikeTheme();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nike Clone',
      theme: nikeTheme,
      home: const ShopScreen(),
      routes: {
        DrawerScreens.discover.routeName: (_) => const DiscoverScreen(),
        DrawerScreens.shop.routeName: (_) => const ShopScreen(),
        DrawerScreens.events.routeName: (_) => const EventsScreen(),
        DrawerScreens.orders.routeName: (_) => const OrdersScreen(),
        DrawerScreens.favourites.routeName: (_) => const FavouritesScreen(),
        DrawerScreens.inbox.routeName: (_) => const InboxScreen(),
        DrawerScreens.settings.routeName: (_) => const SettingsScreen(),
        BagScreen.routeName: (_) => const BagScreen(),
      },
    );
  }
}


// class App extends StatelessWidget {
//   App({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routeInformationProvider: _router.routeInformationProvider,
//       routeInformationParser: _router.routeInformationParser,
//       routerDelegate: _router.routerDelegate,
//       title: 'GoRouter Example',
//     );
//   }

//   final GoRouter _router = GoRouter(
//     routes: <GoRoute>[
//       GoRoute(
//         path: '/',
//         builder: (BuildContext context, GoRouterState state) {
//           return ScreenA();
//         },
//       ),
//       GoRoute(
//         path: '/b',
//         builder: (BuildContext context, GoRouterState state) {
//           return ScreenB();
//         },
//       ),
//     ],
//   );
// }