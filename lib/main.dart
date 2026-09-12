import 'package:flutter/material.dart';
import 'package:quran_app_abbas/core/sources/routes_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'config/theme/theme_manager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final onboardingSeen = prefs.getBool('onboardingSeen') ?? false;

  runApp(
    Islami(
      onboardingSeen: onboardingSeen,
    ),
  );
}

class Islami extends StatelessWidget {
  final bool onboardingSeen;

  const Islami({
    super.key,
    required this.onboardingSeen,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeManager.light,
      darkTheme: ThemeManager.dark,
      themeMode: ThemeMode.light,

      routes: RoutesManager.routes,

      initialRoute: onboardingSeen
          ? RoutesManager.mainLayout
          : RoutesManager.onboarding,
    );
  }
}