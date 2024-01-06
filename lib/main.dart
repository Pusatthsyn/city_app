import 'package:city_app/screens/login_screen.dart';
import 'package:city_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CityApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor1,
        useMaterial3: true,
        fontFamily: "Poppins"
      ),
      home: const LoginPage(),
    );
  }
}