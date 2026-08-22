import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';
import 'package:aljadwal/features/home/pages/home_page.dart';
import 'package:aljadwal/features/welcome/pages/welcome_page.dart';
import 'package:aljadwal/features/auth/pages/login_page.dart';
import 'package:aljadwal/features/auth/pages/signup_page.dart';
import 'package:aljadwal/features/auth/pages/terms_page.dart';
import 'package:aljadwal/features/auth/pages/privacy_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // =========================================================
      // Welcome
      // =========================================================
      case AppRoutes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomePage());

      // =========================================================
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      // =========================================================
      // Signup
      // =========================================================
      case AppRoutes.signup:
        return MaterialPageRoute(builder: (_) => const SignupPage());
      // =========================================================
      // Terms
      // =========================================================
      case AppRoutes.terms:
        return MaterialPageRoute(builder: (_) => const TermsPage());
      // =========================================================
      // Privacy
      // =========================================================
      case AppRoutes.privacy:
        return MaterialPageRoute(builder: (_) => const PrivacyPage());
      // =========================================================
      // Home
      // =========================================================
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());

      // =========================================================
      // Route غير معروف
      // =========================================================
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Page Not Found: ${settings.name}')),
          ),
        );
    }
  }
}
