import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final double left;
  final double top;
  final double width;
  final double height;
  final Widget child;
  final VoidCallback? onTap;

  const AppCard({
    super.key,
    required this.left,
    required this.top,
    required this.width,
    required this.height,
    required this.child,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      width: width,
      height: height,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF111111),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: const Color(0xFF7CC000), width: 1.3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.35),
                blurRadius: 12,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: child,
        ),
      ),
    );
  }
}
