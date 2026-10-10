import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final IconData? buttonIcon;
  final Color? buttonIconColor;
  final Color? buttonBgColor;
  final Border? border;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  const AppButton({
    super.key,
    required this.buttonText,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.buttonIcon,
    this.buttonIconColor,
    this.buttonBgColor,
    this.border,
    this.boxShadow,
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
          color: buttonBgColor ?? AppColors.grey100,
          borderRadius: BorderRadius.circular(6),
          border: border,
          boxShadow:
              boxShadow ??
              [
                BoxShadow(
                  color: Colors.black12,
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
                color: textColor,
                fontWeight: fontWeight ?? FontWeight.w500,
                fontSize: fontSize ?? 12,
                letterSpacing: 1,
              ),
            ),

            if (buttonIcon != null) ...[
              const SizedBox(width: 5),
              Icon(buttonIcon, color: buttonIconColor ?? textColor, size: 18),
            ],
          ],
        ),
      ),
    );
  }
}
