import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSpacing.h15,

              // 🏷️ Headline
              Text(
                'Forgot\npassword?',
                style: AppTextStyles.xl.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),

              AppSpacing.h30,

              // ✉️ Email Field
              const CustomTextField(
                hintText: 'Enter your email address',
                prefixIcon: Icon(Icons.mail_outline),
              ),

              AppSpacing.h15,

              // ℹ️ Info Text
              Text(
                '* We will send you a message to set or reset your new password',
                style: AppTextStyles.caption.copyWith(color: AppColors.grey),
              ),

              AppSpacing.h30,

              // 🔘 Submit Button
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  buttonText: 'Submit',
                  buttonBgColor: AppColors.pink,
                  textColor: AppColors.white,
                  fontSize: 18,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  onTap: () {
                    // TODO: Reset password logic
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
