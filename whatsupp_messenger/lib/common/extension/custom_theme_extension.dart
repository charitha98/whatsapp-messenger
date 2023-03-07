import 'package:flutter/material.dart';

import '../utils/color_list.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension>{

  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: ColorList.greyLight,
    blueColor: ColorList.blueLight,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHighColor: Color(0xFFE8E8ED),
    authAppbarTextColor: ColorList.greenLight
  );

  static const darkMode = CustomThemeExtension(
      circleImageColor: ColorList.greenDark,
      greyColor: ColorList.greyDark,
      blueColor: ColorList.blueDark,
      langBtnBgColor: Color(0xFF182229),
      langBtnHighColor: Color(0xFF09141A),
    authAppbarTextColor: Color(0xFFE9EDEF)
  );

  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHighColor;
  final Color? authAppbarTextColor;

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHighColor,
    this.authAppbarTextColor
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHighColor,
    Color? authAppbarTextColor
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHighColor: langBtnHighColor ?? this.langBtnHighColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t
  ){
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      langBtnHighColor: Color.lerp(langBtnHighColor, other.langBtnHighColor, t),
      authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t)
    );
  }
  
  
  
}