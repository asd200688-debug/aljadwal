import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const designWidth = 944.0;
    const designHeight = 1666.0;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final scale = screenWidth / designWidth;
          final pageHeight = designHeight * scale;

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              width: screenWidth,
              height: pageHeight,
              child: Stack(
                children: [
                  // التصميم الترحيبي بالكامل
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/14_welcome.png',
                      fit: BoxFit.fill,
                    ),
                  ),

                  // منطقة لمس شفافة لزر الدخول
                  Positioned(
                    left: 0.25 * designWidth * scale,
                    top: 0.78 * designHeight * scale,
                    width: 0.50 * designWidth * scale,
                    height: 0.12 * designHeight * scale,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.home);
                      },
                      child: const SizedBox.expand(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
