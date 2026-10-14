import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/app_button.dart';
import '../../shared/app_container.dart';

/// Payment Success Popup Dialog (Figma "Successfully" modal design)
class OrderSuccessDialog extends StatelessWidget {
  const OrderSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      // Background transparent taaki card clean dikhe
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      child: AppContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Jitna content utni hi height
          children: [
            // Pink Circular Badge with Checkmark
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

            // Success Text
            const Text(
              'Payment done successfully.',
              textAlign: TextAlign.center,
              style: AppTextStyles.title,
            ),

            AppSpacing.h20,

            // Continue Shopping Button (Wapas Home Screen par le jane ke liye)
            SizedBox(
              width: double.infinity,
              child: AppButton(
                padding: const EdgeInsets.symmetric(vertical: 12),
                buttonText: 'Continue Shopping',
                buttonBgColor: AppColors.pink,
                textColor: AppColors.white,
                fontSize: 15,
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
