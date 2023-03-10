import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsupp_messenger/common/utils/color_list.dart';

import '../extension/custom_theme_extension.dart';

ThemeData lightTheme(){

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: ColorList.backgroundLight,
      scaffoldBackgroundColor: ColorList.backgroundLight,
      extensions: [CustomThemeExtension.lightMode],

      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 18),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark
        )
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorList.greenLight,
              foregroundColor: ColorList.backgroundLight,
              splashFactory: NoSplash.splashFactory,
              elevation: 0,
              shadowColor: Colors.transparent
          )
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: ColorList.backgroundLight,
          modalBackgroundColor: ColorList.backgroundLight,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              )
          )
      ),
    dialogBackgroundColor: ColorList.backgroundLight,
    dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        )
    ),
  );

}