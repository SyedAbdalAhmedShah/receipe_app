import 'package:flutter/material.dart';
import 'package:receipe_app/config/theme_config.dart';
import 'package:receipe_app/constants/app_colors.dart';
import 'package:receipe_app/pages/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reciepe App',
      theme: ThemeConfig.themeData,
      home: const splashscreen(),
    );
  }
}
