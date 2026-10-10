import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../shared/app_container.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: AppContainer(
        color: AppColors.grey100,

        child: Row(
          children: [
            Image.asset(
              height: 100,
              width: 100,
              'assets/home_page/special_offer.png',
              fit: BoxFit.contain,
            ),

            AppSpacing.w20,

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Special Offers 😱', style: AppTextStyles.title),

                  AppSpacing.h10,

                  Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    'We make sure you get the offer you need at best prices',
                    style: AppTextStyles.body,
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
