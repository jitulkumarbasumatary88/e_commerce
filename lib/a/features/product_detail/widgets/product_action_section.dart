import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/shared/app_button.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/material.dart';

/// Section with service tags, Go to Cart / Buy Now CTAs, delivery banner, and utility actions
class ProductActionSection extends StatelessWidget {
  final Products? product;
  final VoidCallback? onGoToCartTap;
  final VoidCallback? onBuyNowTap;
  final VoidCallback? onSimilarTap;
  final VoidCallback? onCompareTap;

  const ProductActionSection({
    super.key,
    this.product,
    this.onGoToCartTap,
    this.onBuyNowTap,
    this.onSimilarTap,
    this.onCompareTap,
  });

  @override
  Widget build(BuildContext context) {
    // Service feature badges
    final tags = [
      {'icon': Icons.location_on_outlined, 'label': 'Nearest Store'},
      {'icon': Icons.lock_outline_rounded, 'label': 'VIP'},
      {'icon': Icons.assignment_return_outlined, 'label': 'Return policy'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Service Tags Row
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            for (var tag in tags)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: AppColors.grey),
                  color: AppColors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      tag['icon'] as IconData,
                      color: AppColors.grey,
                      size: 15,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      tag['label'] as String,
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),

        AppSpacing.h15,

        // Primary Action Buttons Row: 'Go to Cart' and 'Buy Now'
        Row(
          children: [
            // Go to Cart (Blue Button)
            Expanded(
              child: AppButton(
                buttonText: 'Go to Cart',
                buttonIcon: Icons.shopping_cart_outlined,
                buttonBgColor: AppColors.blue,
                textColor: AppColors.white,
                buttonIconColor: AppColors.white,
                onTap: onGoToCartTap,
              ),
            ),

            AppSpacing.w10,

            // Buy Now (Green Button)
            Expanded(
              child: AppButton(
                buttonText: 'Buy Now',
                buttonIcon: Icons.touch_app_outlined,
                buttonBgColor: AppColors.green,
                textColor: AppColors.white,
                buttonIconColor: AppColors.white,
                onTap: onBuyNowTap,
              ),
            ),
          ],
        ),

        AppSpacing.h15,

        // Fast Delivery Announcement Banner (Pink Container)
        AppContainer(
          width: double.infinity,
          color: AppColors.pink,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery in',
                style: TextStyle(
                  color: AppColors.white.withValues(alpha: 0.9),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                '1 within hour',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),

        AppSpacing.h15,

        // Secondary Utility Buttons: 'Similar' and 'Add to Compare'
        Row(
          children: [
            Expanded(
              child: AppButton(
                buttonText: 'Similar',
                buttonIcon: Icons.remove_red_eye_outlined,
                textColor: AppColors.black,
                buttonIconColor: AppColors.black,
                buttonBgColor: AppColors.white,
                border: Border.all(color: AppColors.grey),
                boxShadow: const [],
                onTap: onSimilarTap,
              ),
            ),

            AppSpacing.w10,

            Expanded(
              child: AppButton(
                buttonText: 'Add to Compare',
                buttonIcon: Icons.compare_arrows_rounded,
                textColor: AppColors.black,
                buttonIconColor: AppColors.black,
                buttonBgColor: AppColors.white,
                border: Border.all(color: AppColors.grey),
                boxShadow: const [],
                onTap: onCompareTap,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
