import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart'; // 👈 [NEW]: AppRoutes import
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_field.dart';
import 'widgets/social_icons.dart'; // 👈 [NEW]: SocialIcons import

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                'Welcome\nBack!',
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

              AppSpacing.h10,

              // ❓ Forgot Password Button (AppRoutes se connect)
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    AppRoutes.toForgotPassword(context);
                  },
                  child: Text(
                    'Forgot Password?',
                    style: AppTextStyles.body.copyWith(
                      color: AppColors.pink,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              AppSpacing.h30,

              // 🔘 Login Button
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  buttonText: 'Login',
                  buttonBgColor: AppColors.pink,
                  textColor: AppColors.white,
                  fontSize: 18,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  onTap: () {
                    // TODO: Kal Home par bhejenge!
                  },
                ),
              ),

              AppSpacing.h30,

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

              AppSpacing.h30,

              // 📝 Sign Up Link (AppRoutes se connect)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create An Account ',
                    style: AppTextStyles.body.copyWith(color: AppColors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      AppRoutes.toSignUp(context);
                    },
                    child: Text(
                      'Sign Up',
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
