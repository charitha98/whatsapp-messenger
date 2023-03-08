import 'package:flutter/material.dart';
import 'package:whatsupp_messenger/common/extension/custom_theme_extension.dart';

import '../../../common/utils/color_list.dart';
import '../../../common/widgets/custom_elevated_button.dart';
import '../widgets/language_button.dart';
import '../widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Image.asset(
                  'assets/images/circle1.png',
                  color: context.theme.circleImageColor,
                ),
              ),
          ),
          const SizedBox(height: 40),
          Expanded(
              child: Column(
                children: [
                  const Text(
                    "Welcome to WhatsApp",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const PrivacyAndTerms(),
                  CustomElevatedButton(
                    onPressed: (){},
                    text: 'Agree and Continue'
                  ),
                  const SizedBox(height: 50),
                  const LanguageButton()
                ],
              )
          )
        ],
      )
    );
  }
}






