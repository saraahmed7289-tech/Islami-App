import 'package:flutter/material.dart';
import 'package:quran_app_abbas/config/theme/theme_manager.dart';
import 'package:quran_app_abbas/core/sources/colors_manager.dart';
import 'package:quran_app_abbas/core/sources/routes_manager.dart';

void main() {
  runApp(Islami());
}

class Islami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeManager.light,
      darkTheme: ThemeManager.dark,
    themeMode: ThemeMode.light,
      routes: RoutesManager.routes,
      initialRoute: RoutesManager.mainLayout,
    );
  }
}
