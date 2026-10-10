import 'package:flutter/material.dart';

import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';

import '../../../shared/app_button.dart';
import '../../../shared/app_container.dart';

class DealBanner extends StatelessWidget {
  final String text1;
  final IconData icon;
  final String text2;
  final Color backgroundColor;
  final VoidCallback? onViewAllTap;

  const DealBanner({
    super.key,
    required this.text1,
    required this.icon,
    required this.text2,
    required this.backgroundColor,
    this.onViewAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: AppContainer(
        color: backgroundColor,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: AppTextStyles.title.copyWith(color: AppColors.white),
                  ),

                  AppSpacing.h5,

                  Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(icon, size: 18, color: AppColors.white),

                      Text(
                        text2,
                        style: AppTextStyles.body.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            AppButton(
              buttonText: 'View All',
              textColor: AppColors.white,
              buttonIcon: Icons.arrow_forward_rounded,
              buttonBgColor: Colors.transparent,
              border: Border.all(color: AppColors.white, width: 1.5),
              boxShadow: [],
              onTap: onViewAllTap,
            ),
          ],
        ),
      ),
    );
  }
}
