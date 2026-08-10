import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    // =========================================================
    // أبعاد تصميم Figma
    // =========================================================
    const figmaWidth = 402.0;
    const figmaHeight = 874.0;

    // =========================================================
    // أبعاد صورة التصميم الموجودة في المشروع
    // =========================================================
    const imageWidth = 944.0;
    const imageHeight = 1666.0;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;

          final scale = screenWidth / imageWidth;
          final pageHeight = imageHeight * scale;

          // تحويل إحداثيات Figma إلى إحداثيات صورة التصميم
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
                  // الصورة الكاملة لصفحة تسجيل الحساب
                  // =================================================
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/13_signup.png',
                      fit: BoxFit.fill,
                    ),
                  ),

                  // =================================================
                  // الاسم
                  // Figma: X 30 / Y 257 / W 341 / H 35
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(257),
                    width: w(341),
                    height: h(35),
                    label: 'الاسم',
                    onTap: () {
                      debugPrint('Signup: الاسم');
                    },
                  ),

                  // =================================================
                  // رقم الجوال
                  // Figma: X 30 / Y 306 / W 341 / H 35
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(306),
                    width: w(341),
                    height: h(35),
                    label: 'رقم الجوال',
                    onTap: () {
                      debugPrint('Signup: رقم الجوال');
                    },
                  ),

                  // =================================================
                  // البريد الإلكتروني
                  // Figma: X 30 / Y 355 / W 341 / H 35
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(355),
                    width: w(341),
                    height: h(35),
                    label: 'البريد الإلكتروني',
                    onTap: () {
                      debugPrint('Signup: البريد الإلكتروني');
                    },
                  ),

                  // =================================================
                  // كلمة المرور
                  // Figma: X 30 / Y 404 / W 341 / H 35
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(404),
                    width: w(341),
                    height: h(35),
                    label: 'كلمة المرور',
                    onTap: () {
                      debugPrint('Signup: كلمة المرور');
                    },
                  ),

                  // =================================================
                  // تأكيد كلمة المرور
                  // Figma: X 30 / Y 453 / W 341 / H 35
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(453),
                    width: w(341),
                    height: h(35),
                    label: 'تأكيد كلمة المرور',
                    onTap: () {
                      debugPrint('Signup: تأكيد كلمة المرور');
                    },
                  ),

                  // =================================================
                  // تاريخ الميلاد - السنة
                  // Figma: X 30 / Y 502 / W 86 / H 34
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(502),
                    width: w(86),
                    height: h(34),
                    label: 'سنة الميلاد',
                    onTap: () {
                      debugPrint('Signup: سنة الميلاد');
                    },
                  ),

                  // =================================================
                  // تاريخ الميلاد - الشهر
                  // Figma: X 124 / Y 502 / W 71 / H 34
                  // =================================================
                  _hitArea(
                    left: x(124),
                    top: y(502),
                    width: w(71),
                    height: h(34),
                    label: 'شهر الميلاد',
                    onTap: () {
                      debugPrint('Signup: شهر الميلاد');
                    },
                  ),

                  // =================================================
                  // تاريخ الميلاد - اليوم
                  // Figma: X 204 / Y 502 / W 77 / H 34
                  // =================================================
                  _hitArea(
                    left: x(204),
                    top: y(502),
                    width: w(77),
                    height: h(34),
                    label: 'يوم الميلاد',
                    onTap: () {
                      debugPrint('Signup: يوم الميلاد');
                    },
                  ),

                  // =================================================
                  // الجنس - أنثى
                  // Figma: X 30 / Y 550 / W 122 / H 34
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(550),
                    width: w(122),
                    height: h(34),
                    label: 'أنثى',
                    onTap: () {
                      debugPrint('Signup: أنثى');
                    },
                  ),

                  // =================================================
                  // الجنس - ذكر
                  // Figma: X 163 / Y 550 / W 119 / H 34
                  // =================================================
                  _hitArea(
                    left: x(163),
                    top: y(550),
                    width: w(119),
                    height: h(34),
                    label: 'ذكر',
                    onTap: () {
                      debugPrint('Signup: ذكر');
                    },
                  ),

                  // =================================================
                  // الموافقة على الشروط والأحكام
                  // Figma: X 354 / Y 607 / W 13 / H 13
                  // =================================================
                  _hitArea(
                    left: x(354),
                    top: y(607),
                    width: w(13),
                    height: h(13),
                    label: 'الموافقة على الشروط والأحكام',
                    onTap: () {
                      debugPrint('Signup: الموافقة على الشروط والأحكام');
                    },
                  ),

                  // =================================================
                  // إنشاء الحساب
                  // Figma: X 30 / Y 633 / W 341 / H 42
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(633),
                    width: w(341),
                    height: h(42),
                    label: 'إنشاء الحساب',
                    onTap: () {
                      debugPrint('Signup: إنشاء الحساب');
                    },
                  ),

                  // =================================================
                  // إنشاء الحساب بواسطة Apple
                  // Figma: X 30 / Y 723 / W 75 / H 59
                  // =================================================
                  _hitArea(
                    left: x(30),
                    top: y(723),
                    width: w(75),
                    height: h(59),
                    label: 'إنشاء الحساب بواسطة Apple',
                    onTap: () {
                      debugPrint('Signup: Apple');
                    },
                  ),

                  // =================================================
                  // إنشاء الحساب بواسطة Google
                  // Figma: X 116 / Y 723 / W 75 / H 59
                  // =================================================
                  _hitArea(
                    left: x(116),
                    top: y(723),
                    width: w(75),
                    height: h(59),
                    label: 'إنشاء الحساب بواسطة Google',
                    onTap: () {
                      debugPrint('Signup: Google');
                    },
                  ),

                  // =================================================
                  // إنشاء الحساب بواسطة STC
                  // Figma: X 205 / Y 723 / W 75 / H 59
                  // =================================================
                  _hitArea(
                    left: x(205),
                    top: y(723),
                    width: w(75),
                    height: h(59),
                    label: 'إنشاء الحساب بواسطة STC',
                    onTap: () {
                      debugPrint('Signup: STC');
                    },
                  ),

                  // =================================================
                  // إنشاء الحساب بواسطة رقم الجوال
                  // Figma: X 294 / Y 723 / W 75 / H 59
                  // =================================================
                  _hitArea(
                    left: x(294),
                    top: y(723),
                    width: w(75),
                    height: h(59),
                    label: 'إنشاء الحساب بواسطة رقم الجوال',
                    onTap: () {
                      debugPrint('Signup: رقم الجوال');
                    },
                  ),

                  // =================================================
                  // لدي حساب - تسجيل الدخول
                  // Figma: X 163 / Y 827 / W 68 / H 14
                  // =================================================
                  _hitArea(
                    left: x(163),
                    top: y(827),
                    width: w(68),
                    height: h(14),
                    label: 'تسجيل الدخول',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.login);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // ===========================================================
  // منطقة لمس شفافة
  // ===========================================================
  static Widget _hitArea({
    required double left,
    required double top,
    required double width,
    required double height,
    required String label,
    required VoidCallback onTap,
  }) {
    return Positioned(
      left: left,
      top: top,
      width: width,
      height: height,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Semantics(
          button: true,
          label: label,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: onTap,
            child: const SizedBox.expand(),
          ),
        ),
      ),
    );
  }
}
