import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/app_button.dart';
import '../../shared/app_text_field.dart';
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

  Future<void> _handleSignIn() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Please fill all fields')));
      return;
    }
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (!mounted) return;
      AppRoutes.toHomeScreen(context);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message ?? 'Login failed')));
    }
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

                AppTextField(
                  controller: _emailController,
                  hintText: 'Username or Email',
                  prefixIcon: const Icon(Icons.person_outline),
                ),

                AppSpacing.h20,

                AppTextField(
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
                  child: AppButton(
                    buttonText: 'Login',
                    buttonBgColor: AppColors.pink,
                    fontSize: 18,
                    textColor: AppColors.white,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    boxShadow: [],
                    onTap: _handleSignIn,
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
