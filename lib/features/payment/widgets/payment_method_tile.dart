import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_text_styles.dart';
import '../../../shared/app_container.dart';

/// Payment method tile (VISA, PayPal, MasterCard, Apple Pay ke liye)
class PaymentMethodTile extends StatelessWidget {
  final String text1; // Method name (e.g., VISA, PayPal)
  final String text2; // Card number mask (e.g., *********2109)
  final bool isSelected; // Selected highlight karne ke liye
  final VoidCallback? onTap;

  const PaymentMethodTile({
    super.key,
    required this.text1,
    required this.text2,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: AppContainer(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        borderRadius: BorderRadius.circular(10),
        // Selected method ko pink border, baaki ko light grey border
        border: Border.all(
          color: isSelected ? AppColors.pink : AppColors.grey300,
          width: isSelected ? 1.5 : 1,
        ),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 2)),
        ],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Payment method brand name
            Text(
              text1,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.w600,
                color: isSelected ? AppColors.pink : AppColors.black,
              ),
            ),

            // Card masked number
            Text(
              text2,
              style: AppTextStyles.caption.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
