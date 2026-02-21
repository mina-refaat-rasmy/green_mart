import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/functions/navigation.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/images.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/wedgit/main_button.dart';
import 'package:green_mart/feature/auth/pages/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.welcome,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 70,
            left: 20,
            right: 20,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppImages.carrotSvg,
                  colorFilter: ColorFilter.mode(
                    AppColors.backgroundColor,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome \nto Green Mart',
                  textAlign: TextAlign.center,
                  style: TextStyles.hadline.copyWith(color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Your one-stop shop for fresh .',
                  style: TextStyles.subtitle.copyWith(color: Colors.white70),
                ),
                SizedBox(height: 20),
                MainButton(
                  text: 'Get Started',
                  onPressed: () {
                    push(context, LoginScreen());
                    // Navigate to the next screen
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
