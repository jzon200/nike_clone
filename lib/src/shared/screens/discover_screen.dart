import 'package:flutter/material.dart';

import '../widgets/nike_scaffold.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    return NikeScaffold(
      body: Container(color: Colors.blueAccent),
    );
  }
}
