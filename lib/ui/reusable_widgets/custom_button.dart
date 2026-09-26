import 'package:flutter/material.dart';

import 'constant.dart';
import 'custom_container.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final IconData buttonIcon;
  final Color buttonIconColor;
  final Color? buttonBgColor;
  final Border? border;

  const CustomButton({
    super.key,
    required this.buttonText,
    this.textColor = Colors.white,
    required this.buttonIcon,
    this.buttonIconColor = Colors.white,
    this.buttonBgColor,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: buttonBgColor ?? Colors.white,
      padding: EdgeInsets.only(top: 5, bottom: 5, left: 9, right: 5),
      borderRadius: BorderRadius.circular(6),
      border: border,

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(buttonText, style: TextStyle(color: textColor)),

          ContentSpace.sWidth,

          Icon(buttonIcon, color: buttonIconColor),
        ],
      ),
    );
  }
}
