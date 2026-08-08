import 'package:flutter/material.dart';
import 'package:aljadwal/core/router/app_routes.dart';
import 'package:aljadwal/core/router/route_generator.dart';

class AljadwalApp extends StatelessWidget {
  const AljadwalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcome,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
