import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../shared/app_button.dart';
import '../../../shared/app_container.dart';

class DiscountBanner extends StatelessWidget {
  final VoidCallback? onShopNowTap;

  const DiscountBanner({super.key, this.onShopNowTap});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/home_page/chokri_kaa_image.png',
                      fit: BoxFit.cover,
                      alignment: Alignment.centerRight,
                    ),
                  ),

                  Positioned(
                    left: 20,
                    top: 0,
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '50-40% OFF',
                          style: AppTextStyles.appBarTitle.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        AppSpacing.h10,

                        Text(
                          'Now in (product)\nAll colours',
                          style: AppTextStyles.body.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        AppSpacing.h15,

                        AppButton(
                          buttonText: 'Shop Now',
                          textColor: AppColors.white,
                          buttonIcon: Icons.arrow_forward_rounded,
                          buttonBgColor: Colors.transparent,
                          border: Border.all(
                            color: AppColors.white,
                            width: 1.5,
                          ),
                          boxShadow: [],
                          onTap: onShopNowTap,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          AppSpacing.h10,

          // CAPSULE DOTS INDICATOR (3 Dots)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                AppContainer(
                  height: 5,
                  width: 25,
                  color: i == 0 ? AppColors.pink : AppColors.grey300,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  borderRadius: BorderRadius.circular(5),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
