import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    const imageWidth = 944.0;
    const imageHeight = 1666.0;

    final languageCode = Localizations.localeOf(context).languageCode;

    final privacyImage = languageCode == 'en'
        ? 'assets/images/17- privacy_policy_en.png'
        : 'assets/images/17_privacy.png';

    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final imageHeightOnScreen = imageHeight * (screenWidth / imageWidth);

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              width: screenWidth,
              height: imageHeightOnScreen,
              child: Image.asset(
                privacyImage,
                width: screenWidth,
                height: imageHeightOnScreen,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
