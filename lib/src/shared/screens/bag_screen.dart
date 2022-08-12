import 'package:flutter/material.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({Key? key}) : super(key: key);

  static const routeName = '/bag';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bag'),
      ),
      body: Container(color: Colors.black54),
    );
  }
}
