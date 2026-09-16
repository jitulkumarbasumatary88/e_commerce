import 'package:flutter/material.dart';

import '../../reusable/custom_box_reuse.dart';

class BigBanner extends StatelessWidget {
  final String text1;
  final String? text2;
  final String? text3;
  final String? buttonText;
  final IconData? icon;
  final Color backgroundColor;
  final Color? buttonColor;
  final IconData bannerIcon;
  final bool isImageLeft;

  const BigBanner({
    super.key,
    required this.text1,
    this.text2,
    this.text3,
    this.buttonText,
    this.icon,
    required this.backgroundColor,
    this.buttonColor,
    required this.bannerIcon,
    this.isImageLeft = false,
  });

  @override
  Widget build(BuildContext context) {
    ////////// Button / Text / Icon //////////
    final textContent = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ////////// Text //////////
          Text(text1),

          if (text2 != null) Text(text2!),

          if (text3 != null) Text(text3!),

          ////////// Button / Text / Icon //////////
          if (buttonText != null)
            CustomBoxReuse(
              color: buttonColor,
              border: Border.all(color: Colors.white),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text(buttonText!), SizedBox(width: 5), Icon(icon)],
              ),
            ),
        ],
      ),
    );

    ////////// Image //////////
    final imageContent = CustomBoxReuse(child: Icon(bannerIcon));

    return CustomBoxReuse(
      color: backgroundColor,
      child: Row(
        children: isImageLeft
            ? [imageContent, textContent]
            : [textContent, imageContent],
      ),
    );
  }
}
