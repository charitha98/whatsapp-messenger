import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsupp_messenger/common/extension/custom_theme_extension.dart';

import '../utils/color_list.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: (){},
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: ColorList.greenDark,
              ),
              SizedBox(width: 10),
              Text(
                'English',
                style: TextStyle(
                    color: ColorList.greenDark
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.keyboard_arrow_down,
                color: ColorList.greenDark,
              )
            ],
          ),
        ),
      ),
    );
  }
}