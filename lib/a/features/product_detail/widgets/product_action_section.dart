import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/shared/app_button.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/material.dart';

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
    final tags = [
      {'icon': Icons.location_on_outlined, 'label': 'Nearest Store'},
      {'icon': Icons.lock_outline_rounded, 'label': 'VIP'},
      {'icon': Icons.assignment_return_outlined, 'label': 'Return policy'},
    ];

    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (var tag in tags)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: AppColors.grey),
                    color: AppColors.white,
                  ),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        tag['icon'] as IconData,
                        color: AppColors.grey,
                        size: 14,
                      ),

                      const SizedBox(width: 3),

                      Text(
                        tag['label'] as String,
                        style: AppTextStyles.caption.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),

          AppSpacing.h15,

          Row(
            children: [
              Expanded(
                child: AppButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  fontSize: 14,
                  buttonText: 'Go to Cart',
                  buttonIcon: Icons.shopping_cart_outlined,
                  buttonBgColor: AppColors.blue,
                  textColor: AppColors.white,
                  boxShadow: [],
                  onTap: onGoToCartTap,
                ),
              ),

              AppSpacing.w10,

              Expanded(
                child: AppButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  fontSize: 14,
                  buttonText: 'Buy Now',
                  buttonIcon: Icons.touch_app_outlined,
                  buttonBgColor: AppColors.green,
                  textColor: AppColors.white,
                  boxShadow: [],
                  onTap: onBuyNowTap,
                ),
              ),
            ],
          ),

          AppSpacing.h15,

          AppContainer(
            width: double.infinity,
            color: AppColors.pink,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery in',
                  style: AppTextStyles.body.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                AppSpacing.h5,

                Text(
                  '1 within hour',
                  style: AppTextStyles.heading.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),

          AppSpacing.h15,

          Row(
            children: [
              Expanded(
                child: AppButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  fontSize: 14,
                  buttonText: 'Similar',
                  buttonIcon: Icons.remove_red_eye_outlined,
                  buttonBgColor: AppColors.white,
                  border: Border.all(color: AppColors.grey),
                  boxShadow: [],
                  onTap: onSimilarTap,
                ),
              ),

              AppSpacing.w10,

              Expanded(
                child: AppButton(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  fontSize: 14,
                  buttonText: 'Add to Compare',
                  buttonIcon: Icons.compare_arrows_rounded,
                  buttonBgColor: AppColors.white,
                  border: Border.all(color: AppColors.grey),
                  boxShadow: [],
                  onTap: onCompareTap,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
