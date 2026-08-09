import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // =========================================================
    // أبعاد التصميم الأصلي في Figma
    // =========================================================
    const figmaWidth = 402.0;
    const figmaHeight = 874.0;

    // أبعاد صورة التصميم الموجودة في المشروع
    const imageWidth = 944.0;
    const imageHeight = 1666.0;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;

          // مقياس التصميم حسب عرض الشاشة
          final scale = screenWidth / imageWidth;

          // ارتفاع الصفحة بعد تطبيق المقياس
          final pageHeight = imageHeight * scale;

          // =====================================================
          // تحويل إحداثيات Figma إلى إحداثيات التصميم المستخدم
          // =====================================================

          double x(double value) {
            return (value / figmaWidth) * imageWidth * scale;
          }

          double y(double value) {
            return (value / figmaHeight) * imageHeight * scale;
          }

          double w(double value) {
            return (value / figmaWidth) * imageWidth * scale;
          }

          double h(double value) {
            return (value / figmaHeight) * imageHeight * scale;
          }

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              width: screenWidth,
              height: pageHeight,
              child: Stack(
                children: [
                  // =================================================
                  // الخلفية الترحيبية
                  // =================================================
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/14_welcome.png',
                      fit: BoxFit.fill,
                    ),
                  ),

                  // =================================================
                  // تسجيل الدخول
                  //
                  // Figma:
                  // X = 103
                  // Y = 560
                  // W = 194
                  // H = 52
                  // =================================================
                  Positioned(
                    left: x(103),
                    top: y(560),
                    width: w(194),
                    height: h(52),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Semantics(
                        button: true,
                        label: 'تسجيل الدخول',
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.login);
                          },
                          child: const SizedBox.expand(),
                        ),
                      ),
                    ),
                  ),

                  // =================================================
                  // الدخول كزائر
                  //
                  // Figma:
                  // X = 122
                  // Y = 654
                  // W = 157
                  // H = 52
                  // =================================================
                  Positioned(
                    left: x(122),
                    top: y(654),
                    width: w(157),
                    height: h(52),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Semantics(
                        button: true,
                        label: 'الدخول كزائر',
                        child: GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.home);
                          },
                          child: const SizedBox.expand(),
                        ),
                      ),
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
