import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/theme.dart';
import 'package:nectar_app/features/splash/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppThemes.lightTheme, home: SplashScreen());
  }
}
