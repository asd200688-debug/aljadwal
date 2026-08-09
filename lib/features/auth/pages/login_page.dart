import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    const designWidth = 851.0;
    const designHeight = 1848.0;

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
                  // =====================================================
                  // التصميم الكامل
                  // =====================================================
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/12_login.png',
                      fit: BoxFit.fill,
                    ),
                  ),

                  // =====================================================
                  // زر الرجوع
                  // =====================================================
                  Positioned(
                    left: 25 * scale,
                    top: 28 * scale,
                    width: 70 * scale,
                    height: 70 * scale,
                    child: _TouchArea(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  // =====================================================
                  // حقل البريد / رقم الجوال
                  // =====================================================
                  Positioned(
                    left: 60 * scale,
                    top: 864 * scale,
                    width: 730 * scale,
                    height: 76 * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Email / Phone');
                      },
                    ),
                  ),

                  // =====================================================
                  // حقل كلمة المرور
                  // =====================================================
                  Positioned(
                    left: 60 * scale,
                    top: 970 * scale,
                    width: 730 * scale,
                    height: 76 * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Password');
                      },
                    ),
                  ),

                  // =====================================================
                  // نسيت كلمة المرور؟
                  // =====================================================
                  Positioned(
                    left: 550 * scale,
                    top: 1060 * scale,
                    width: 210 * scale,
                    height: 45 * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Forgot Password');
                      },
                    ),
                  ),

                  // =====================================================
                  // تسجيل الدخول
                  // =====================================================
                  Positioned(
                    left: 60 * scale,
                    top: 1110 * scale,
                    width: 730 * scale,
                    height: 82 * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Login');
                      },
                    ),
                  ),

                  // =====================================================
                  // دخول برقم الجوال
                  // =====================================================
                  Positioned(
                    left: 585 * scale,
                    top: 1250 * scale,
                    width: 190 * scale,
                    height: 125 * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Login with phone');
                      },
                    ),
                  ),

                  // =====================================================
                  // STC Pay
                  // =====================================================
                  Positioned(
                    left: 420 * scale,
                    top: 1250 * scale,
                    width: 160 * scale,
                    height: 125 * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('STC Pay');
                      },
                    ),
                  ),

                  // =====================================================
                  // Google
                  // =====================================================
                  Positioned(
                    left: 245 * scale,
                    top: 1250 * scale,
                    width: 160 * scale,
                    height: 125 * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Google');
                      },
                    ),
                  ),

                  // =====================================================
                  // Apple
                  // =====================================================
                  Positioned(
                    left: 60 * scale,
                    top: 1250 * scale,
                    width: 160 * scale,
                    height: 125 * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Apple');
                      },
                    ),
                  ),

                  // =====================================================
                  // إنشاء حساب جديد
                  // =====================================================
                  Positioned(
                    left: 250 * scale,
                    top: 1420 * scale,
                    width: 350 * scale,
                    height: 80 * scale,
                    child: _TouchArea(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.signup);
                      },
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

/// منطقة لمس شفافة تمامًا
class _TouchArea extends StatelessWidget {
  final VoidCallback onTap;

  const _TouchArea({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        child: const SizedBox.expand(),
      ),
    );
  }
}
