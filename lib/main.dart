import 'package:flutter/material.dart';
import 'package:receipe_app/config/theme_config.dart';
import 'package:receipe_app/constants/app_strings.dart';
import 'package:receipe_app/pages/splash/splash_screen.dart';
import 'package:appwrite/appwrite.dart';
import 'package:receipe_app/server/server_constants.dart';

void main() {
  
  final client = Client()
      .setEndpoint(ServerConstants.serverEndPoint) // Your API Endpoint
      .setProject(ServerConstants.projectId);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.APP_NAME,
      theme: ThemeConfig.themeData,
      home: const Splashscreen(),
    );
  }
}
