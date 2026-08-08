import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // الخلفية
          Positioned.fill(
            child: Image.asset(
              'assets/images/home_background_v2.png',
              fit: BoxFit.cover,
            ),
          ),

          // ==========================
          // اللاعبة
          // ==========================
          Positioned(
            left: screenWidth * 0.03,
            top: screenHeight * 0.30,
            width: screenWidth * 0.20,
            height: screenHeight * 0.18,
            child: GestureDetector(
              onTap: () {
                debugPrint('Female Player');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink.withValues(alpha: 0.3),
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),

          // ==========================
          // اللاعب
          // ==========================
          Positioned(
            left: screenWidth * 0.25,
            top: screenHeight * 0.30,
            width: screenWidth * 0.20,
            height: screenHeight * 0.18,
            child: GestureDetector(
              onTap: () {
                debugPrint('Player');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withValues(alpha: 0.3),
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),

          // ==========================
          // منظم التمرين
          // ==========================
          Positioned(
            left: screenWidth * 0.48,
            top: screenHeight * 0.30,
            width: screenWidth * 0.20,
            height: screenHeight * 0.18,
            child: GestureDetector(
              onTap: () {
                debugPrint('Organizer');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.3),
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),

          // ==========================
          // الحكم
          // ==========================
          Positioned(
            left: screenWidth * 0.72,
            top: screenHeight * 0.30,
            width: screenWidth * 0.20,
            height: screenHeight * 0.18,
            child: GestureDetector(
              onTap: () {
                debugPrint('Referee');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange.withValues(alpha: 0.3),
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
