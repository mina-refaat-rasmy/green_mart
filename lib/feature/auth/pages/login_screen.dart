import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/images.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/wedgit/custom_textformfeild.dart';
import 'package:green_mart/core/wedgit/main_button.dart';
import 'package:green_mart/core/wedgit/passWord_TextField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(AppImages.carrotSvg),
              ),
              SizedBox(height: 20),
              Text(
                'Login',
                style: TextStyles.hadline.copyWith(color: Colors.black),
              ),
              SizedBox(height: 20),
              Text(
                "Enter your email and password",
                style: TextStyles.subtitle.copyWith(color: AppColors.textgray),
              ),
              SizedBox(height: 38),
              Text(
                'Email',
                style: TextStyles.subtitle.copyWith(color: Colors.black),
              ),
              SizedBox(height: 10),
              CustomTextformfeild(hintText: "Enter your email"),
              SizedBox(height: 10),
              Text(
                'Password',
                style: TextStyles.subtitle.copyWith(color: Colors.black),
              ),
              SizedBox(height: 10),
              PassWordTextField(hintText: "Enter your password"),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot password?",
                    style: TextStyles.subtitle.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              MainButton(text: "Login", onPressed: () {}),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyles.subtitle.copyWith(
                      color: AppColors.textgray,
                    ),
                    children: [
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sign up",
                            style: TextStyles.subtitle.copyWith(
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
