import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class CartBillingDetails extends StatelessWidget {
  final num price;

  const CartBillingDetails({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Other Payment Details', style: AppTextStyles.heading),

        AppSpacing.h15,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Amounts',
              style: AppTextStyles.title.copyWith(fontWeight: FontWeight.w300),
            ),

            Text(
              '\$$price',
              style: AppTextStyles.title.copyWith(letterSpacing: 0),
            ),
          ],
        ),

        AppSpacing.h10,

        Row(
          children: [
            Text(
              'Convenience',
              style: AppTextStyles.title.copyWith(fontWeight: FontWeight.w300),
            ),

            AppSpacing.w10,

            Text(
              'Know More',
              style: AppTextStyles.caption.copyWith(color: AppColors.pink),
            ),

            const Spacer(),

            Text(
              'Apply Coupon',
              style: AppTextStyles.caption.copyWith(color: AppColors.pink),
            ),
          ],
        ),

        AppSpacing.h10,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Fee',
              style: AppTextStyles.title.copyWith(fontWeight: FontWeight.w300),
            ),

            Text(
              'Free',
              style: AppTextStyles.caption.copyWith(color: AppColors.pink),
            ),
          ],
        ),

        AppSpacing.h15,
        const Divider(color: AppColors.grey300),
        AppSpacing.h15,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Order Total', style: AppTextStyles.heading),

            Text(
              '\$$price',
              style: AppTextStyles.title.copyWith(
                color: AppColors.pink,
                letterSpacing: 0,
              ),
            ),
          ],
        ),

        AppSpacing.h10,

        Row(
          children: [
            Text(
              'EMI Available',
              style: AppTextStyles.title.copyWith(fontWeight: FontWeight.w300),
            ),

            AppSpacing.w10,

            Text(
              'Details',
              style: AppTextStyles.caption.copyWith(color: AppColors.pink),
            ),
          ],
        ),
      ],
    );
  }
}
