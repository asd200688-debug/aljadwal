import 'package:flutter/material.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const imageWidth = 944.0;
    const imageHeight = 1666.0;

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
                'assets/images/16_terms.png',
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
