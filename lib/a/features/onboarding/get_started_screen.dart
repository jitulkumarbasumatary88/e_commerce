import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/app_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/onboarding/get_started.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.8),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'You want\nAuthentic, here\nyou go!',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.xl.copyWith(color: AppColors.white),
                ),

                AppSpacing.h15,

                Text(
                  'Find it here, buy it now!',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.body.copyWith(color: AppColors.white),
                ),

                Padding(
                  padding: const EdgeInsets.all(50),
                  child: SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      buttonText: 'Get Started',
                      buttonBgColor: AppColors.pink,
                      textColor: AppColors.white,
                      fontSize: 20,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      onTap: () {
                        AppRoutes.toSignIn(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
