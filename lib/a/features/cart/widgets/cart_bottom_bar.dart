import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/shared/app_button.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  final num price;
  final VoidCallback? onProceedTap;

  const CartBottomBar({super.key, required this.price, this.onProceedTap});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 40),
      borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      boxShadow: const [
        BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, -3)),
      ],

      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$$price', style: AppTextStyles.title),

                AppSpacing.h5,

                Text(
                  'View Details',
                  style: AppTextStyles.caption.copyWith(color: AppColors.pink),
                ),
              ],
            ),
          ),

          AppButton(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            fontSize: 16,
            buttonText: 'Proceed to Payment',
            buttonBgColor: AppColors.pink,
            textColor: AppColors.white,
            boxShadow: const [],
            onTap: onProceedTap,
          ),
        ],
      ),
    );
  }
}
