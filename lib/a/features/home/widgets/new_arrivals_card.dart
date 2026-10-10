import 'package:flutter/material.dart';

import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';

import '../../../shared/app_button.dart';
import '../../../shared/app_container.dart';

class NewArrivalsCard extends StatelessWidget {
  final VoidCallback? onViewAllTap;

  const NewArrivalsCard({super.key, this.onViewAllTap});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: AppContainer(
        padding: EdgeInsets.zero,
        color: AppColors.grey100,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                width: double.infinity,
                'assets/home_page/new_arrivals.png',
                fit: BoxFit.contain,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('New Arrivals', style: AppTextStyles.title),

                        AppSpacing.h5,

                        Text(
                          "Summer' 25 Collections",
                          style: AppTextStyles.body,
                        ),
                      ],
                    ),
                  ),

                  AppButton(
                    buttonText: 'View All',
                    textColor: AppColors.white,
                    buttonIcon: Icons.arrow_forward_rounded,
                    buttonBgColor: AppColors.pink,
                    boxShadow: [],
                    onTap: onViewAllTap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
