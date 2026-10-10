import 'package:flutter/material.dart';

import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';

import '../../../shared/app_button.dart';
import '../../../shared/app_container.dart';

class FlatHeelsCard extends StatelessWidget {
  final VoidCallback? onVisitNowTap;

  const FlatHeelsCard({super.key, this.onVisitNowTap});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: AppContainer(
        color: AppColors.grey100,
        child: Row(
          children: [
            Image.asset(
              'assets/home_page/flat_and_heels.png',
              height: 180,
              width: 140,
              fit: BoxFit.contain,
            ),

            AppSpacing.w10,

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Flat and Heels', style: AppTextStyles.title),

                  AppSpacing.h5,

                  Text(
                    'Stand a chance to get rewarded',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.body,
                  ),

                  AppSpacing.h15,

                  Align(
                    alignment: Alignment.centerRight,
                    child: AppButton(
                      buttonText: 'Visit Now',
                      textColor: AppColors.white,
                      buttonIcon: Icons.arrow_forward_rounded,
                      buttonBgColor: AppColors.pink,
                      boxShadow: [],
                      onTap: onVisitNowTap,
                    ),
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
