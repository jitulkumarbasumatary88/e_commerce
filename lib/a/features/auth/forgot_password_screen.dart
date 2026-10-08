import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSpacing.h20,

                      Text(
                        'Forgot\npassword?',
                        style: AppTextStyles.xl.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      AppSpacing.h30,

                      CustomTextField(
                        controller: _emailController,
                        hintText: 'Enter your email address',
                        prefixIcon: Icon(Icons.mail_outline),
                      ),

                      AppSpacing.h20,

                      Text(
                        '* We will send you a message to set or reset your new password',
                        style: AppTextStyles.body.copyWith(
                          color: AppColors.grey,
                        ),
                      ),

                      AppSpacing.h40,

                      SizedBox(
                        width: double.infinity,
                        child: CustomButton(
                          buttonText: 'Submit',
                          buttonBgColor: AppColors.pink,
                          textColor: AppColors.white,
                          fontSize: 18,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          onTap: () {},
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
