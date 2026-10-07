import 'package:flutter/material.dart';

import 'custom_container.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final IconData buttonIcon;
  final Color buttonIconColor;
  final Color? buttonBgColor;
  final Border? border;
  final VoidCallback? onTap;

  const CustomButton({
    super.key,
    required this.buttonText,
    this.textColor = Colors.white,
    required this.buttonIcon,
    this.buttonIconColor = Colors.white,
    this.buttonBgColor,
    this.border,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(6),
      onTap: onTap,
      child: CustomContainer(
        color: buttonBgColor ?? Colors.white,
        // padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        borderRadius: BorderRadius.circular(6),
        border: border,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],

        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 13,
                letterSpacing: 1,
              ),
            ),

            Icon(buttonIcon, color: buttonIconColor, size: 18),
          ],
        ),
      ),
    );
  }
}
