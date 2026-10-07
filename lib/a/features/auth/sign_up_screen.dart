import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_field.dart';
import 'widgets/social_icons.dart'; // 👈 [NEW]: SocialIcons import

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.h20,

              // 🏷️ Headline
              Text(
                'Create an\naccount',
                style: AppTextStyles.xl.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),

              AppSpacing.h30,

              // 👤 Email/Username
              const CustomTextField(
                hintText: 'Username or Email',
                prefixIcon: Icon(Icons.person_outline),
              ),

              AppSpacing.h15,

              // 🔒 Password
              const CustomTextField(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
                obscureText: true,
              ),

              AppSpacing.h15,

              // 🔒 Confirm Password
              const CustomTextField(
                hintText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
                obscureText: true,
              ),

              AppSpacing.h15,

              // 📜 Disclaimer
              Text(
                'By clicking the Register button, you agree to the public offer',
                style: AppTextStyles.caption.copyWith(color: AppColors.grey),
              ),

              AppSpacing.h20,

              // 🔘 Create Account Button
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  buttonText: 'Create Account',
                  buttonBgColor: AppColors.pink,
                  textColor: AppColors.white,
                  fontSize: 18,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  onTap: () {
                    // TODO: Register karke aage bhejenge!
                  },
                ),
              ),

              AppSpacing.h20,

              // Divider
              Center(
                child: Text(
                  '- OR Continue with -',
                  style: AppTextStyles.caption.copyWith(color: AppColors.grey),
                ),
              ),

              AppSpacing.h20,

              // 🌐 Social Icons
              const SocialIcons(),

              AppSpacing.h20,

              // 🔙 Login link (Wapas Sign In par jaane ke liye)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I Already Have an Account ',
                    style: AppTextStyles.body.copyWith(color: AppColors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login',
                      style: AppTextStyles.body.copyWith(
                        color: AppColors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
