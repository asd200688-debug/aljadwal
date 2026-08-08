import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // مقاس التصميم الأصلي للصورة
    const designWidth = 944.0;
    const designHeight = 1666.0;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;

          // نحافظ على نسبة الصورة الأصلية
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
                  // التصميم الأساسي
                  // =====================================================
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/home_background_v2.png',
                      fit: BoxFit.fill,
                    ),
                  ),

                  // =====================================================
                  // منطقة لمس: اللاعبة
                  // =====================================================
                  Positioned(
                    left: 0.03 * designWidth * scale,
                    top: 0.30 * designHeight * scale,
                    width: 0.20 * designWidth * scale,
                    height: 0.18 * designHeight * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Female Player');
                      },
                    ),
                  ),

                  // =====================================================
                  // منطقة لمس: اللاعب
                  // =====================================================
                  Positioned(
                    left: 0.25 * designWidth * scale,
                    top: 0.30 * designHeight * scale,
                    width: 0.20 * designWidth * scale,
                    height: 0.18 * designHeight * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Player');
                      },
                    ),
                  ),

                  // =====================================================
                  // منطقة لمس: منظم التمرين
                  // =====================================================
                  Positioned(
                    left: 0.48 * designWidth * scale,
                    top: 0.30 * designHeight * scale,
                    width: 0.20 * designWidth * scale,
                    height: 0.18 * designHeight * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Organizer');
                      },
                    ),
                  ),

                  // =====================================================
                  // منطقة لمس: الحكم
                  // =====================================================
                  Positioned(
                    left: 0.72 * designWidth * scale,
                    top: 0.30 * designHeight * scale,
                    width: 0.20 * designWidth * scale,
                    height: 0.18 * designHeight * scale,
                    child: _TouchArea(
                      onTap: () {
                        debugPrint('Referee');
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

/// منطقة لمس شفافة تمامًا.
/// لا تظهر على التصميم، لكنها تستقبل الضغط.
class _TouchArea extends StatelessWidget {
  final VoidCallback onTap;

  const _TouchArea({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: const SizedBox.expand(),
    );
  }
}
