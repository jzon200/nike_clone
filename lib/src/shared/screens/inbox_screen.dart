import 'package:flutter/material.dart';

import '../widgets/nike_scaffold.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  static const routeName = '/inbox';

  @override
  Widget build(BuildContext context) {
    return NikeScaffold(
      body: Container(color: Colors.indigo),
    );
  }
}
