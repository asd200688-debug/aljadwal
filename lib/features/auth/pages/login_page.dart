import 'package:flutter/material.dart';

import 'package:aljadwal/core/router/app_routes.dart';
import 'package:aljadwal/core/localization/app_language.dart';
import 'package:aljadwal/core/localization/app_strings.dart';

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
    required TextDirection textDirection,
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
          child: Directionality(
            textDirection: textDirection,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 20 * scale, color: Colors.white),
                SizedBox(height: 2 * scale),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  textDirection: textDirection,
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
      ),
    );
  }

  // =====================================================
  // Widget ثابت لميزة من مزايا التطبيق
  // لا يحتوي على أي تفاعل
  // =====================================================
  Widget _featureCard({
    required double scale,
    required IconData icon,
    required String title,
    required String subtitle,
    required double width,
    required double height,
    required TextDirection textDirection,
  }) {
    return SizedBox(
      width: width * scale,
      height: height * scale,
      child: Directionality(
        textDirection: textDirection,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 20 * scale,
              color: const Color.fromARGB(255, 0, 220, 110),
            ),
            SizedBox(height: 4 * scale),
            Text(
              title,
              textAlign: TextAlign.center,
              textDirection: textDirection,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 8 * scale,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 2 * scale),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              textDirection: textDirection,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 6.5 * scale,
                color: const Color.fromARGB(255, 160, 165, 160),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const designWidth = 402.0;
    const designHeight = 875.0;

    final language = AppLanguageScope.of(context);
    final languageCode = language.locale.languageCode;

    final isArabic = language.isArabic;

    final textDirection = isArabic ? TextDirection.rtl : TextDirection.ltr;

    return Directionality(
      textDirection: textDirection,
      child: Scaffold(
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
                    // الخلفية
                    // =====================================================
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/12_login.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    // =====================================================
                    // زر اللغة
                    // نفس لون أزرار تسجيل الدخول وإنشاء الحساب
                    // =====================================================
                    Positioned(
                      left: 24 * scale,
                      top: 13 * scale,
                      width: 52 * scale,
                      height: 37 * scale,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7 * scale),
                          onTap: () {
                            AppLanguageScope.of(context).toggle();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 44, 113, 79),
                              borderRadius: BorderRadius.circular(7 * scale),
                              border: Border.all(
                                color: const Color.fromARGB(110, 255, 255, 255),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.language,
                                  size: 15 * scale,
                                  color: const Color.fromARGB(255, 0, 220, 110),
                                ),
                                SizedBox(width: 3 * scale),
                                Text(
                                  AppStrings.get(languageCode, 'language_ar'),
                                  textAlign: TextAlign.center,
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
                          AppStrings.get(languageCode, 'welcome_login'),
                          textAlign: TextAlign.center,
                          textDirection: textDirection,
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
                          AppStrings.get(languageCode, 'login_subtitle'),
                          textAlign: TextAlign.center,
                          textDirection: textDirection,
                          style: TextStyle(
                            fontSize: 10 * scale,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
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
                        textAlign: TextAlign.start,
                        textDirection: textDirection,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          fontSize: 11 * scale,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: AppStrings.get(
                            languageCode,
                            'email_or_phone',
                          ),
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
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 8 * scale),
                            child: Icon(
                              Icons.person_outline,
                              size: 18 * scale,
                              color: const Color.fromARGB(255, 0, 220, 110),
                            ),
                          ),
                          prefixIconConstraints: BoxConstraints(
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
                    // كلمة المرور
                    // Figma: X 37 / Y 469 / W 329 / H 36
                    // العين: X 48 / Y 481 / W 17 / H 12
                    // =====================================================
                    Positioned(
                      left: 37 * scale,
                      top: 469 * scale,
                      width: 329 * scale,
                      height: 36 * scale,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(7 * scale),
                          border: Border.all(
                            color: const Color.fromARGB(110, 255, 255, 255),
                            width: 1,
                          ),
                        ),
                        child: Stack(
                          children: [
                            TextField(
                              obscureText: !_passwordVisible,
                              textAlign: TextAlign.start,
                              textDirection: textDirection,
                              keyboardType: TextInputType.visiblePassword,
                              style: TextStyle(
                                fontSize: 10 * scale,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                hintText: AppStrings.get(
                                  languageCode,
                                  'password',
                                ),
                                hintStyle: TextStyle(
                                  fontSize: 10 * scale,
                                  color: const Color.fromARGB(
                                    255,
                                    135,
                                    141,
                                    137,
                                  ),
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                  left: 40 * scale,
                                  right: 40 * scale,
                                  top: 0,
                                  bottom: 0,
                                ),
                              ),
                            ),

                            // العين
                            Positioned(
                              top: 12 * scale,
                              width: 17 * scale,
                              height: 12 * scale,
                              left: textDirection == TextDirection.rtl
                                  ? 15 * scale
                                  : null,
                              right: textDirection == TextDirection.ltr
                                  ? 15 * scale
                                  : null,
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

                            // القفل
                            Positioned(
                              top: 0,
                              bottom: 0,
                              left: textDirection == TextDirection.ltr
                                  ? 8 * scale
                                  : null,
                              right: textDirection == TextDirection.rtl
                                  ? 8 * scale
                                  : null,
                              child: Icon(
                                Icons.lock_outline,
                                size: 18 * scale,
                                color: const Color.fromARGB(255, 0, 220, 110),
                              ),
                            ),
                          ],
                        ),
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
                            AppStrings.get(languageCode, 'forgot_password'),
                            textAlign: TextAlign.center,
                            textDirection: textDirection,
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
                              color: const Color.fromARGB(255, 44, 113, 79),
                              borderRadius: BorderRadius.circular(7 * scale),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              AppStrings.get(languageCode, 'login'),
                              textAlign: TextAlign.center,
                              textDirection: textDirection,
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
                        label: AppStrings.get(languageCode, 'apple'),
                        textDirection: textDirection,
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
                        label: AppStrings.get(languageCode, 'google'),
                        textDirection: textDirection,
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
                        label: AppStrings.get(languageCode, 'phone_login'),
                        textDirection: textDirection,
                        onTap: () {
                          debugPrint('Login: رقم الجوال');
                        },
                      ),
                    ),
                    // =====================================================
                    // إنشاء حساب جديد
                    // نفس أبعاد حقول البريد وكلمة المرور
                    // =====================================================
                    Positioned(
                      left: 37 * scale,
                      top: 689 * scale,
                      width: 329 * scale,
                      height: 36 * scale,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(7 * scale),
                          onTap: () {
                            Navigator.pushNamed(context, AppRoutes.signup);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 44, 113, 79),
                              borderRadius: BorderRadius.circular(7 * scale),
                              border: Border.all(
                                color: const Color.fromARGB(110, 255, 255, 255),
                                width: 1,
                              ),
                            ),
                            child: Stack(
                              children: [
                                // الأيقونة ثابتة في اليسار
                                Positioned(
                                  left: 12 * scale,
                                  top: 0,
                                  bottom: 0,
                                  child: Icon(
                                    Icons.person_add_alt_1_outlined,
                                    size: 20 * scale,
                                    color: const Color.fromARGB(
                                      255,
                                      0,
                                      220,
                                      110,
                                    ),
                                  ),
                                ),

                                // النص في منتصف المربع
                                Positioned.fill(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        AppStrings.get(
                                          languageCode,
                                          'no_account',
                                        ),
                                        textAlign: TextAlign.center,
                                        textDirection: textDirection,
                                        style: TextStyle(
                                          fontSize: 8 * scale,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        AppStrings.get(
                                          languageCode,
                                          'create_account',
                                        ),
                                        textAlign: TextAlign.center,
                                        textDirection: textDirection,
                                        style: TextStyle(
                                          fontSize: 9 * scale,
                                          color: const Color.fromARGB(
                                            255,
                                            0,
                                            220,
                                            110,
                                          ),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // =====================================================
                    // مزايا التطبيق - Widgets ثابتة
                    // Figma: X 24 / Y 751 / W 360 / H 74
                    // =====================================================
                    Positioned(
                      left: 24 * scale,
                      top: 751 * scale,
                      width: 360 * scale,
                      height: 74 * scale,
                      child: Row(
                        children: [
                          _featureCard(
                            scale: scale,
                            icon: Icons.shield_outlined,
                            title: AppStrings.get(
                              languageCode,
                              'safe_environment',
                            ),
                            subtitle: AppStrings.get(
                              languageCode,
                              'safe_environment_subtitle',
                            ),
                            width: 83,
                            height: 60,
                            textDirection: textDirection,
                          ),
                          SizedBox(width: 7 * scale),
                          _featureCard(
                            scale: scale,
                            icon: Icons.emoji_events_outlined,
                            title: AppStrings.get(
                              languageCode,
                              'challenges_rewards',
                            ),
                            subtitle: AppStrings.get(
                              languageCode,
                              'challenges_rewards_subtitle',
                            ),
                            width: 83,
                            height: 60,
                            textDirection: textDirection,
                          ),
                          SizedBox(width: 7 * scale),
                          _featureCard(
                            scale: scale,
                            icon: Icons.groups_outlined,
                            title: AppStrings.get(
                              languageCode,
                              'sports_community',
                            ),
                            subtitle: AppStrings.get(
                              languageCode,
                              'sports_community_subtitle',
                            ),
                            width: 83,
                            height: 60,
                            textDirection: textDirection,
                          ),
                          SizedBox(width: 8 * scale),
                          _featureCard(
                            scale: scale,
                            icon: Icons.calendar_month_outlined,
                            title: AppStrings.get(
                              languageCode,
                              'easy_scheduling',
                            ),
                            subtitle: AppStrings.get(
                              languageCode,
                              'easy_scheduling_subtitle',
                            ),
                            width: 83,
                            height: 60,
                            textDirection: textDirection,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
