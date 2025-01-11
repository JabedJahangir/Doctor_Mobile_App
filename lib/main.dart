import 'package:doctor_mobile_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:doctor_mobile_app/Colors/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.buttonColor,
            foregroundColor: AppColors.themeColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
