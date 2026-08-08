import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final double left;
  final double top;
  final double width;
  final double height;
  final VoidCallback onTap;

  const HomeButton({
    super.key,
    required this.left,
    required this.top,
    required this.width,
    required this.height,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      width: width,
      height: height,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(22),
          onTap: onTap,
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}
