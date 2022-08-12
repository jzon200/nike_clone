import 'package:flutter/material.dart';

import '../widgets/nike_scaffold.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    return NikeScaffold(
      // appBar: AppBar(
      //   title: const Text('Purchases'),
      // ),
      body: Container(color: Colors.green),
    );
  }
}
