import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

ThemeData buildNikeTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: nikeWhite,
      onPrimary: nikeBlack87,
      secondary: nikeBlack87,
      onSecondary: nikeWhite,
    ),
    appBarTheme: base.appBarTheme.copyWith(
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: nikeBlack87,
      ),
    ),
    listTileTheme: ListTileThemeData(textColor: Colors.grey[700]),
    dividerTheme: base.dividerTheme.copyWith(color: Colors.black54),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(width: 2.0),
        insets: EdgeInsets.symmetric(horizontal: 24.0),
      ),
      labelColor: nikeBlack87,
    ),
    splashFactory: InkRipple.splashFactory,
  );
}
