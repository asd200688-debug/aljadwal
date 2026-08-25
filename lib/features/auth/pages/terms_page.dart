import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const imageWidth = 944.0;
    const imageHeight = 1666.0;

    final languageCode = Localizations.localeOf(context).languageCode;

    final termsImage = languageCode == 'en'
        ? 'assets/images/16- terms_conditions_en.png'
        : 'assets/images/16_terms.png';

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
                termsImage,
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
