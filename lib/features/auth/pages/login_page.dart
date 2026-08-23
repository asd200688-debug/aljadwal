import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;
  // =====================================================
  // زر دخول بديل
  // =====================================================
  Widget _loginOptionButton({
    required double scale,
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(7 * scale),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(7 * scale),
            border: Border.all(
              color: const Color.fromARGB(110, 255, 255, 255),
              width: 1,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20 * scale, color: Colors.white),
              SizedBox(height: 2 * scale),
              Text(
                label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 8 * scale,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const designWidth = 402.0;
    const designHeight = 875.0;

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
                  // زر اللغة
                  // Figma: X 25 / Y 21 / W 52 / H 37
                  // =====================================================
                  Positioned(
                    left: 57 * scale,
                    top: 13 * scale,
                    width: 52 * scale,
                    height: 37 * scale,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.30),
                        borderRadius: BorderRadius.circular(6 * scale),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(6 * scale),
                          onTap: () {
                            debugPrint('Language button');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.language,
                                size: 15 * scale,
                                color: Colors.white,
                              ),
                              SizedBox(width: 3 * scale),
                              Text(
                                'AR',
                                style: TextStyle(
                                  fontSize: 10 * scale,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  // =====================================================
                  // البريد الإلكتروني / رقم الجوال
                  // Figma: X 37 / Y 419 / W 329 / H 36
                  // =====================================================
                  Positioned(
                    left: 37 * scale,
                    top: 419 * scale,
                    width: 329 * scale,
                    height: 36 * scale,
                    child: TextField(
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontSize: 11 * scale,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: 'البريد الإلكتروني أو رقم الجوال',
                        hintStyle: TextStyle(
                          fontSize: 10 * scale,
                          color: const Color.fromARGB(255, 135, 141, 137),
                          fontWeight: FontWeight.w400,
                        ),
                        filled: true,
                        fillColor: Colors.transparent,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12 * scale,
                          vertical: 0,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 8 * scale),
                          child: Icon(
                            Icons.person_outline,
                            size: 18 * scale,
                            color: const Color.fromARGB(255, 0, 220, 110),
                          ),
                        ),
                        suffixIconConstraints: BoxConstraints(
                          minWidth: 34 * scale,
                          minHeight: 36 * scale,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7 * scale),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(110, 255, 255, 255),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7 * scale),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(110, 255, 255, 255),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7 * scale),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(180, 0, 220, 110),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // =====================================================
                  // عنوان الترحيب
                  // Figma: X 97 / Y 336 / W 207 / H 33
                  // =====================================================
                  Positioned(
                    left: 97 * scale,
                    top: 336 * scale,
                    width: 207 * scale,
                    height: 33 * scale,
                    child: Center(
                      child: Text(
                        'مرحبًا بك في الجدول',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 20 * scale,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  // =====================================================
                  // الوصف تحت العنوان
                  // Figma: X 83 / Y 376 / W 233 / H 18
                  // =====================================================
                  Positioned(
                    left: 83 * scale,
                    top: 376 * scale,
                    width: 233 * scale,
                    height: 18 * scale,
                    child: Center(
                      child: Text(
                        'سجّل الدخول واستمتع بتجربة رياضية متكاملة',
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 10 * scale,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          AppRoutes.welcome,
                          (route) => false,
                        );
                      },
                    ),
                  ),
                  // =====================================================
                  // كلمة المرور - TextField حقيقي
                  // Figma: X 37 / Y 469 / W 329 / H 36
                  // العين: X 48 / Y 481 / W 17 / H 12
                  // =====================================================
                  Positioned(
                    left: 37 * scale,
                    top: 469 * scale,
                    width: 329 * scale,
                    height: 36 * scale,
                    child: Stack(
                      children: [
                        // حقل كلمة المرور
                        TextField(
                          obscureText: !_passwordVisible,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(
                            fontSize: 11 * scale,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            hintText: 'كلمة المرور',
                            hintStyle: TextStyle(
                              fontSize: 10 * scale,
                              color: const Color.fromARGB(255, 135, 141, 137),
                              fontWeight: FontWeight.w400,
                            ),
                            filled: true,
                            fillColor: Colors.transparent,
                            contentPadding: EdgeInsets.only(
                              left: 40 * scale,
                              right: 40 * scale,
                              top: 0,
                              bottom: 0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7 * scale),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(110, 255, 255, 255),
                                width: 1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7 * scale),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(110, 255, 255, 255),
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7 * scale),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(180, 0, 220, 110),
                                width: 1,
                              ),
                            ),
                          ),
                        ),

                        // قفل ثابت
                        Positioned(
                          right: 8 * scale,
                          top: 0,
                          bottom: 0,
                          child: Icon(
                            Icons.lock_outline,
                            size: 18 * scale,
                            color: const Color.fromARGB(255, 0, 220, 110),
                          ),
                        ),

                        // العين - حسب Figma
                        Positioned(
                          left: 48 * scale,
                          top: 12 * scale,
                          width: 17 * scale,
                          height: 12 * scale,
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                            child: Center(
                              child: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_outlined,
                                size: 14 * scale,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // =====================================================
                  // نسيت كلمة المرور؟
                  // Figma: X 284 / Y 512 / W 80 / H 16
                  // =====================================================
                  Positioned(
                    left: 284 * scale,
                    top: 512 * scale,
                    width: 80 * scale,
                    height: 16 * scale,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        debugPrint('Forgot Password');
                      },
                      child: Center(
                        child: Text(
                          'نسيت كلمة المرور؟',
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 9 * scale,
                            color: const Color.fromARGB(255, 0, 220, 110),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // =====================================================
                  // زر تسجيل الدخول
                  // Figma: X 37 / Y 539 / W 329 / H 36
                  // =====================================================
                  Positioned(
                    left: 37 * scale,
                    top: 539 * scale,
                    width: 329 * scale,
                    height: 36 * scale,
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(7 * scale),
                        onTap: () {
                          debugPrint('Login');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 0, 220, 110),
                            borderRadius: BorderRadius.circular(7 * scale),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'تسجيل الدخول',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12 * scale,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // =====================================================
                  // خيارات الدخول البديلة
                  // Apple / Google / رقم الجوال
                  // =====================================================

                  // Apple
                  Positioned(
                    left: 49 * scale,
                    top: 609 * scale,
                    width: 97 * scale,
                    height: 57 * scale,
                    child: _loginOptionButton(
                      scale: scale,
                      icon: Icons.apple,
                      label: 'Apple',
                      onTap: () {
                        debugPrint('Login: Apple');
                      },
                    ),
                  ),

                  // Google
                  Positioned(
                    left: 153 * scale,
                    top: 609 * scale,
                    width: 97 * scale,
                    height: 57 * scale,
                    child: _loginOptionButton(
                      scale: scale,
                      icon: Icons.g_mobiledata,
                      label: 'Google',
                      onTap: () {
                        debugPrint('Login: Google');
                      },
                    ),
                  ),

                  // دخول برقم الجوال
                  Positioned(
                    left: 257 * scale,
                    top: 609 * scale,
                    width: 97 * scale,
                    height: 57 * scale,
                    child: _loginOptionButton(
                      scale: scale,
                      icon: Icons.phone,
                      label: 'دخول برقم الجوال',
                      onTap: () {
                        debugPrint('Login: رقم الجوال');
                      },
                    ),
                  ),

                  // =========================================================
                  // إنشاء حساب جديد
                  // Figma: X 24 / Y 689 / W 354 / H 50
                  // Converted to 851 × 1848
                  // =========================================================
                  Positioned(
                    left: 51 * scale,
                    top: 1457 * scale,
                    width: 749 * scale,
                    height: 106 * scale,
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
