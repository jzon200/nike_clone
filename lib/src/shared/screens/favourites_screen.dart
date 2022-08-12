import 'package:flutter/material.dart';

import '../widgets/nike_scaffold.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);
  static const routeName = '/favourites';

  @override
  Widget build(BuildContext context) {
    return NikeScaffold(
      body: Container(color: Colors.pinkAccent),
    );
  }
}
