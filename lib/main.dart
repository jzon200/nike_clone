import 'package:flutter/material.dart';

import 'src/home.dart';
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
      home: const Home(),
    );
  }
}
