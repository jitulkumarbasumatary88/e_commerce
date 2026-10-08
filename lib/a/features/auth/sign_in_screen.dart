import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/custom_button.dart';
import '../../shared/custom_text_field.dart';
import 'widgets/social_icons.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isPasswordObscure = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) return;

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
                  'Welcome\nBack!',
                  style: AppTextStyles.xl.copyWith(fontWeight: FontWeight.bold),
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
                  obscureText: _isPasswordObscure,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordObscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: AppColors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordObscure = !_isPasswordObscure;
                      });
                    },
                  ),
                ),

                AppSpacing.h10,

                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      AppRoutes.toForgotPassword(context);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: AppTextStyles.body.copyWith(color: AppColors.pink),
                    ),
                  ),
                ),

                AppSpacing.h40,

                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    buttonText: 'Login',
                    buttonBgColor: AppColors.pink,
                    textColor: AppColors.white,
                    fontSize: 18,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    onTap: _handleLogin,
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
      ),
    );
  }
}
