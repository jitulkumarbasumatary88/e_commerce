import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class NewArrivalOrSponsorBanner extends StatelessWidget {
  final String? text1;
  final String text2;
  final String? text3;
  final String? buttonText;
  final IconData buttonIcon;
  final IconData icon2;

  const NewArrivalOrSponsorBanner({
    super.key,
    this.text1,
    required this.text2,
    this.text3,
    this.buttonText,
    required this.buttonIcon,
    required this.icon2,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (text1 != null) Text(text1!),

          CustomContainer(
            color: Colors.grey,
            height: 100,
            width: double.infinity,
            child: Icon(icon2),
          ),

          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text(text2), if (text3 != null) Text(text3!)],
                ),
              ),

              if (buttonText != null)
                CustomContainer(
                  color: Colors.pinkAccent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [Text(buttonText!), Icon(buttonIcon)],
                  ),
                )
              else
                Icon(buttonIcon),
            ],
          ),
        ],
      ),
    );
  }
}
