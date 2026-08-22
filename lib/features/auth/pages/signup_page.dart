import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // =========================================================
  // حقول التسجيل
  // =========================================================
  final TextEditingController _nameController = TextEditingController();
  int? _selectedDay;
  int? _selectedMonth;
  int? _selectedYear;
  String? _selectedGender;
  bool _acceptedTerms = false;
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

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
                  // الاسم - TextField حقيقي
                  // =================================================
                  Positioned(
                    left: x(30),
                    top: y(257),
                    width: w(341),
                    height: h(35),
                    child: Padding(
                      // نترك مساحة للرمز الموجود في يمين الصورة
                      padding: EdgeInsets.only(right: w(42)),
                      child: TextField(
                        controller: _nameController,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: 11 * (screenWidth / figmaWidth),
                          color: const Color.fromARGB(255, 135, 141, 137),
                          fontWeight: FontWeight.w500,
                        ),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          hintText: 'الاسم الكامل',
                          hintStyle: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 1),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),

                  // =================================================
                  // رقم الجوال - TextField حقيقي
                  // =================================================
                  Positioned(
                    left: x(30),
                    top: y(306),
                    width: w(341),
                    height: h(35),
                    child: Padding(
                      // نترك مساحة لرمز الهاتف الموجود يمين الصورة
                      // ومساحة +966 الموجودة يسار الحقل
                      padding: EdgeInsets.only(left: w(85), right: w(42)),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.ltr,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: 11 * (screenWidth / figmaWidth),
                          color: const Color.fromARGB(255, 152, 158, 152),
                          fontWeight: FontWeight.w500,
                        ),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          hintText: '05XXXXXXXX رقم الجوال',
                          hintStyle: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 1),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  // =================================================
                  // البريد الإلكتروني - TextField حقيقي
                  // =================================================
                  Positioned(
                    left: x(30),
                    top: y(355),
                    width: w(341),
                    height: h(35),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: w(42), // مساحة رمز البريد
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.ltr,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: 11 * (screenWidth / figmaWidth),
                          color: const Color.fromARGB(255, 135, 141, 137),
                          fontWeight: FontWeight.w500,
                        ),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          hintText: 'البريد الإلكتروني',
                          hintStyle: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 3),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  // =================================================
                  // كلمة المرور - TextField حقيقي
                  // =================================================
                  Positioned(
                    left: x(30),
                    top: y(404),
                    width: w(341),
                    height: h(35),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: w(42), // مساحة رمز القفل
                        left: w(42), // مساحة رمز العين
                      ),
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: 11 * (screenWidth / figmaWidth),
                          color: const Color.fromARGB(255, 135, 141, 137),
                          fontWeight: FontWeight.w500,
                        ),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          hintText: 'كلمة المرور',
                          hintStyle: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 3),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  // =================================================
                  // تأكيد كلمة المرور - TextField حقيقي
                  // =================================================
                  Positioned(
                    left: x(30),
                    top: y(453),
                    width: w(341),
                    height: h(35),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: w(42), // مساحة رمز القفل
                        left: w(42), // مساحة رمز العين
                      ),
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        textAlignVertical: TextAlignVertical.center,
                        style: TextStyle(
                          fontSize: 11 * (screenWidth / figmaWidth),
                          color: const Color.fromARGB(255, 135, 141, 137),
                          fontWeight: FontWeight.w500,
                        ),
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                          hintText: 'تأكيد كلمة المرور',
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 135, 141, 137),
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 3),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  // =================================================
                  // تاريخ الميلاد - السنة
                  // =================================================
                  Positioned(
                    left: x(30),
                    top: y(502),
                    width: w(86),
                    height: h(34),
                    child: GestureDetector(
                      onTap: () async {
                        final currentYear = DateTime.now().year;

                        final selectedYear = await showModalBottomSheet<int>(
                          context: context,
                          backgroundColor: const Color(0xFF1C1C1C),
                          builder: (context) {
                            return SafeArea(
                              child: ListView.builder(
                                itemCount: 100,
                                itemBuilder: (context, index) {
                                  final year = currentYear - index;

                                  return ListTile(
                                    title: Text(
                                      '$year',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: Color.fromARGB(
                                          255,
                                          127,
                                          131,
                                          127,
                                        ),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context, year);
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        );

                        if (selectedYear != null) {
                          setState(() {
                            _selectedYear = selectedYear;
                          });
                        }
                      },
                      child: Center(
                        child: Text(
                          _selectedYear?.toString() ?? 'سنة ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11 * (screenWidth / figmaWidth),
                            color: const Color.fromARGB(255, 127, 131, 127),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // =================================================
                  // تاريخ الميلاد - الشهر
                  // =================================================
                  Positioned(
                    left: x(124),
                    top: y(502),
                    width: w(71),
                    height: h(34),
                    child: GestureDetector(
                      onTap: () async {
                        final selectedMonth = await showModalBottomSheet<int>(
                          context: context,
                          backgroundColor: const Color(0xFF1C1C1C),
                          builder: (context) {
                            return SafeArea(
                              child: ListView.builder(
                                itemCount: 12,
                                itemBuilder: (context, index) {
                                  final month = index + 1;

                                  return ListTile(
                                    title: Text(
                                      '$month',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: Color.fromARGB(
                                          255,
                                          127,
                                          131,
                                          127,
                                        ),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context, month);
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        );

                        if (selectedMonth != null) {
                          setState(() {
                            _selectedMonth = selectedMonth;
                          });
                        }
                      },
                      child: Center(
                        child: Text(
                          _selectedMonth?.toString() ?? 'شهر ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11 * (screenWidth / figmaWidth),
                            color: const Color.fromARGB(255, 127, 131, 127),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // =================================================
                  // تاريخ الميلاد - اليوم
                  // =================================================
                  Positioned(
                    left: x(204),
                    top: y(502),
                    width: w(77),
                    height: h(34),
                    child: GestureDetector(
                      onTap: () async {
                        final selectedDay = await showModalBottomSheet<int>(
                          context: context,
                          backgroundColor: const Color(0xFF1C1C1C),
                          builder: (context) {
                            return SafeArea(
                              child: ListView.builder(
                                itemCount: 31,
                                itemBuilder: (context, index) {
                                  final day = index + 1;

                                  return ListTile(
                                    title: Text(
                                      '$day',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        color: Color.fromARGB(
                                          255,
                                          135,
                                          141,
                                          137,
                                        ),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context, day);
                                    },
                                  );
                                },
                              ),
                            );
                          },
                        );

                        if (selectedDay != null) {
                          setState(() {
                            _selectedDay = selectedDay;
                          });
                        }
                      },
                      child: Center(
                        child: Text(
                          _selectedDay?.toString() ?? 'يوم',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 11 * (screenWidth / figmaWidth),
                            color: const Color.fromARGB(255, 135, 141, 137),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // =================================================
                  // الجنس - ذكر / أنثى
                  // =================================================
                  Positioned(
                    left: x(30),
                    top: y(551),
                    width: w(341),
                    height: h(42),
                    child: Row(
                      children: [
                        // ذكر
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedGender = 'male';
                              });
                            },
                            child: Container(
                              height: h(42),
                              decoration: BoxDecoration(
                                color: _selectedGender == 'male'
                                    ? const Color.fromARGB(180, 0, 255, 120)
                                    : const Color.fromARGB(55, 0, 255, 120),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'ذكر',
                                style: TextStyle(
                                  fontSize: 11 * (screenWidth / figmaWidth),
                                  color: const Color.fromARGB(
                                    255,
                                    127,
                                    131,
                                    127,
                                  ),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: w(10)),

                        // أنثى
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedGender = 'female';
                              });
                            },
                            child: Container(
                              height: h(42),
                              decoration: BoxDecoration(
                                color: _selectedGender == 'female'
                                    ? const Color.fromARGB(189, 132, 64, 215)
                                    : const Color.fromARGB(60, 70, 20, 130),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'أنثى',
                                style: TextStyle(
                                  fontSize: 11 * (screenWidth / figmaWidth),
                                  color: const Color.fromARGB(
                                    255,
                                    127,
                                    131,
                                    127,
                                  ),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // =================================================
                  // الموافقة على الشروط والأحكام وسياسة الخصوصية
                  // =================================================
                  Positioned(
                    left: x(354),
                    top: y(607),
                    width: w(13),
                    height: h(13),
                    child: Transform.scale(
                      scale: 0.8,
                      child: Checkbox(
                        value: _acceptedTerms,
                        onChanged: (value) {
                          setState(() {
                            _acceptedTerms = value ?? false;
                          });
                        },
                        activeColor: const Color.fromARGB(255, 0, 220, 110),
                        checkColor: Colors.black,
                        side: const BorderSide(
                          color: Color.fromARGB(255, 0, 220, 110),
                          width: 1.5,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                    ),
                  ),

                  // =================================================
                  // الشروط والأحكام
                  // =================================================
                  _hitArea(
                    left: x(200),
                    top: y(607),
                    width: w(79),
                    height: h(16),
                    label: 'الشروط والأحكام',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.terms);
                    },
                  ),

                  // =================================================
                  // سياسة الخصوصية
                  // =================================================
                  _hitArea(
                    left: x(108),
                    top: y(607),
                    width: w(79),
                    height: h(16),
                    label: 'سياسة الخصوصية',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.privacy);
                    },
                  ),
                  // =================================================
                  // إنشاء الحساب
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
                  // Apple
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
                  // Google
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
                  // STC
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
                  // رقم الجوال
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
