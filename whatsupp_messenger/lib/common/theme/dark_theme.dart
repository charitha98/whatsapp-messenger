import 'package:flutter/material.dart';
import 'package:whatsupp_messenger/common/extension/custom_theme_extension.dart';
import 'package:whatsupp_messenger/common/utils/color_list.dart';

ThemeData darkTheme(){

  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: ColorList.backgroundDark,
    scaffoldBackgroundColor: ColorList.backgroundDark,
    extensions: [CustomThemeExtension.darkMode],

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: ColorList.greenDark,
          foregroundColor: ColorList.backgroundDark,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent
      )
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorList.greyBackground,
      modalBackgroundColor: ColorList.greyBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        )
      )
    )
  );

}