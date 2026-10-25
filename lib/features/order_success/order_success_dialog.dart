import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/app_button.dart';
import '../../shared/app_container.dart';

class OrderSuccessDialog extends StatelessWidget {
  const OrderSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 10),

      child: AppContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.pink,

                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.pink.withValues(alpha: 0.3),
                    blurRadius: 15,
                    spreadRadius: 3,
                  ),
                ],
              ),

              child: const Icon(Icons.check, color: AppColors.white, size: 36),
            ),

            AppSpacing.h20,

            const Text(
              'Payment done successfully.',
              textAlign: TextAlign.center,
              style: AppTextStyles.title,
            ),

            AppSpacing.h20,

            SizedBox(
              width: double.infinity,
              child: AppButton(
                padding: const EdgeInsets.symmetric(vertical: 10),
                buttonText: 'Continue Shopping',
                fontSize: 16,
                textColor: AppColors.white,
                buttonBgColor: AppColors.pink,
                boxShadow: const [],
                onTap: () {
                  AppRoutes.toHomeScreen(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
