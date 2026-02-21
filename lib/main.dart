import 'dart:io';

import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/AppFonts.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
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
        fontFamily: AppFont.fontFamily,
        scaffoldBackgroundColor: AppColors.backgroundColor,
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
        inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.textfeild,
          filled: true,
          hintStyle: TextStyles.caption,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide.none,
          // ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide.none,
          // ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide.none,
          // ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20),
          //   borderSide: BorderSide.none,
          // ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          onSurface: AppColors.caption,
        ),
        // buttonTheme: ButtonThemeData(
        //   buttonColor: AppColors.mainbutton,
        //   textTheme: ButtonTextTheme.primary,
        // ),
      
        //inputDecorationTheme: InputDecorationTheme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
           padding: EdgeInsets.zero,
          minimumSize: Size(30, 30),
          ),
        ),
      ),

      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Container(),
        );
      },
      home: SplashScreen(),
    );
  }
}
