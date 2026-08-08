import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.home);
          },
          child: const Text('ابدأ'),
        ),
      ),
    );
  }
}
