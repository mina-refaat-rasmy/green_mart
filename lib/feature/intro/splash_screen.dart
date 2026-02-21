import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/navigation.dart';
import 'package:green_mart/feature/intro/welcome_screen.dart';

import 'package:green_mart/core/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/styles/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override  
 void initState()  {
    Future.delayed(Duration(seconds: 3), () {
      pushReplacement(context, const WelcomeScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(child: SvgPicture.asset(AppImages.logoSvg)),
    );
  }
}
