import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class BBanner extends StatelessWidget {
  final String text1;
  final String? text2;
  final String? text3;
  final String? buttonText;
  final IconData? buttonIcon;
  final Color? backgroundColor;
  final Color? buttonColor;
  final IconData bannerIcon;
  final bool isImageLeft;

  const BBanner({
    super.key,
    required this.text1,
    this.text2,
    this.text3,
    this.buttonText,
    this.buttonIcon,
    this.backgroundColor,
    this.buttonColor,
    required this.bannerIcon,
    this.isImageLeft = false,
  });

  @override
  Widget build(BuildContext context) {
    final textContent = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text1),

          if (text2 != null) Text(text2!),

          if (text3 != null) Text(text3!),

          if (buttonText != null)
            CustomContainer(
              color: buttonColor,
              border: Border.all(color: Colors.white),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text(buttonText!), Icon(buttonIcon)],
              ),
            ),
        ],
      ),
    );

    final imageContent = CustomContainer(child: Icon(bannerIcon));

    return CustomContainer(
      color: backgroundColor ?? Colors.white,
      child: Row(
        children: isImageLeft
            ? [imageContent, textContent]
            : [textContent, imageContent],
      ),
    );
  }
}
