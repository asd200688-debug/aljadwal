import 'package:flutter/material.dart';

import 'package:aljadwal/core/router/app_routes.dart';
import 'package:aljadwal/features/home/pages/home_page.dart';
import 'package:aljadwal/features/welcome/pages/welcome_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomePage());

      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Page Not Found'))),
        );
    }
  }
}
