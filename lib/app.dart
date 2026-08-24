import 'package:flutter/material.dart';

import 'package:aljadwal/core/router/app_routes.dart';
import 'package:aljadwal/core/router/route_generator.dart';
import 'package:aljadwal/core/localization/app_language.dart';

class AljadwalApp extends StatefulWidget {
  const AljadwalApp({super.key});

  @override
  State<AljadwalApp> createState() => _AljadwalAppState();
}

class _AljadwalAppState extends State<AljadwalApp> {
  final AppLanguage _language = AppLanguage();

  @override
  void dispose() {
    _language.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _language,
      builder: (context, child) {
        return AppLanguageScope(
          language: _language,
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: _language.locale,
            initialRoute: AppRoutes.welcome,
            onGenerateRoute: RouteGenerator.generateRoute,
          ),
        );
      },
    );
  }
}
