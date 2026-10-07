import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color? textColor;
  final IconData? buttonIcon;
  final Color? buttonIconColor;
  final Color? buttonBgColor;
  final Border? border;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    required this.buttonText,
    this.textColor,
    this.buttonIcon,
    this.buttonIconColor,
    this.buttonBgColor,
    this.border,
    this.padding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: onTap,
      child: Container(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: buttonBgColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(6),
          border: border,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(
                color: textColor ?? AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 13,
                letterSpacing: 1,
              ),
            ),
            if (buttonIcon != null) ...[
              const SizedBox(width: 5),
              Icon(
                buttonIcon,
                color: buttonIconColor ?? AppColors.black,
                size: 18,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
