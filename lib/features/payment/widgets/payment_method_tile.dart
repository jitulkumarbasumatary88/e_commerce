import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_text_styles.dart';
import '../../../shared/app_container.dart';

class PaymentMethodTile extends StatelessWidget {
  final FaIconData icon;
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;

  const PaymentMethodTile({
    super.key,
    required this.icon,
    required this.text,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      borderRadius: BorderRadius.circular(6),
      child: AppContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),

        borderRadius: BorderRadius.circular(6),

        border: Border.all(
          color: isSelected ? AppColors.pink : AppColors.grey300,
          width: isSelected ? 1.5 : 1,
        ),

        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 3)),
        ],

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(icon),

            Text(text, style: AppTextStyles.body),
          ],
        ),
      ),
    );
  }
}
