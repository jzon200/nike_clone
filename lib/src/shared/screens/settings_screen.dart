import 'package:flutter/material.dart';

import '../widgets/nike_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NikeScaffold(
      // appBar: AppBar(
      //   title: const Text('Settings'),
      // ),
      body: Container(color: Colors.blueGrey),
    );
  }
}
