import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';

class CartCouponSection extends StatelessWidget {
  final VoidCallback? onCouponTap;

  const CartCouponSection({super.key, this.onCouponTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: onCouponTap,
      child: Row(
        children: [
          const Icon(CupertinoIcons.ticket),

          AppSpacing.w10,

          const Text('Apply Coupons', style: AppTextStyles.title),

          const Spacer(),

          Text(
            'Select',
            style: AppTextStyles.caption.copyWith(
              color: AppColors.pink,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
