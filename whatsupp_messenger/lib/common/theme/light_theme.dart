import 'package:flutter/material.dart';
import 'package:whatsupp_messenger/common/utils/color_list.dart';

import '../extension/custom_theme_extension.dart';

ThemeData lightTheme(){

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: ColorList.backgroundLight,
      scaffoldBackgroundColor: ColorList.backgroundLight,
      extensions: [CustomThemeExtension.lightMode],
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorList.greenLight,
              foregroundColor: ColorList.backgroundLight,
              splashFactory: NoSplash.splashFactory,
              elevation: 0,
              shadowColor: Colors.transparent
          )
      )
  );

}