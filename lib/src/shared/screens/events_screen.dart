import 'package:flutter/material.dart';

import '../widgets/nike_scaffold.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  static const routeName = '/events';

  @override
  Widget build(BuildContext context) {
    return NikeScaffold(
      body: Container(color: Colors.orange),
    );
  }
}
