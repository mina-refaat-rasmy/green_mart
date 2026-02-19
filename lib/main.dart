import 'package:flutter/material.dart';
import 'package:green_mart/AppTest/continerCount.dart';
import 'package:green_mart/core/constants/AppFonts.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/feature/intro/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        fontFamily: AppFont.fontFamily,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.mainbutton,
          textTheme: ButtonTextTheme.primary,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          onSurface: AppColors.caption,
        ),
      ),

      builder: (context, child) =>
          SafeArea(top: false, child: child ?? Container()),
      home: SplashScreen(),
    );
  }
}
