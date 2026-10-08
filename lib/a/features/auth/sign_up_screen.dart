import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_field.dart';
import 'widgets/social_icons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _isPasswordObscure = true;
  bool _isConfirmPasswordObscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleSignUp() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) return;

    if (password != confirmPassword) return;

    // AppRoutes.toHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSpacing.h20,

                Text(
                  'Create an\naccount',
                  style: AppTextStyles.xl.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),

                AppSpacing.h30,

                CustomTextField(
                  controller: _emailController,
                  hintText: 'Username or Email',
                  prefixIcon: const Icon(Icons.person_outline),
                ),

                AppSpacing.h20,

                CustomTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isPasswordObscure = !_isPasswordObscure;
                      });
                    },
                    icon: Icon(
                      _isPasswordObscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: AppColors.grey,
                    ),
                  ),
                  obscureText: _isPasswordObscure,
                ),

                AppSpacing.h20,

                CustomTextField(
                  controller: _confirmPasswordController,
                  hintText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordObscure = !_isConfirmPasswordObscure;
                      });
                    },
                    icon: Icon(
                      _isConfirmPasswordObscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: AppColors.grey,
                    ),
                  ),
                  obscureText: _isConfirmPasswordObscure,
                ),

                AppSpacing.h20,

                Text(
                  'By clicking the Register button, you agree to the public offer',
                  style: AppTextStyles.body.copyWith(color: AppColors.grey),
                ),

                AppSpacing.h40,

                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    buttonText: 'Create Account',
                    buttonBgColor: AppColors.pink,
                    textColor: AppColors.white,
                    fontSize: 18,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    onTap: _handleSignUp,
                  ),
                ),

                AppSpacing.h40,

                Center(
                  child: Text(
                    '- OR Continue with -',
                    style: AppTextStyles.body.copyWith(color: AppColors.grey),
                  ),
                ),

                AppSpacing.h20,

                const SocialIcons(),

                AppSpacing.h20,

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
      ),
    );
  }
}
