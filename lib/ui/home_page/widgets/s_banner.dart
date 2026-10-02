import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class SBanner extends StatelessWidget {
  final String text1;
  final IconData icon;
  final String text2;
  final Color backgroundColor;

  const SBanner({
    super.key,
    required this.text1,
    required this.icon,
    required this.text2,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: backgroundColor,
      child: Row(
        children: [
          Expanded(
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),

                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    Icon(icon, color: Colors.white, size: 18),
                    Text(
                      text2,
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),

          CustomButton(
            buttonText: 'View All',
            // buttonIcon: Icons.keyboard_arrow_right_rounded,
            buttonIcon: Icons.arrow_forward_rounded,
            buttonBgColor: Colors.transparent,
            border: Border.all(color: Colors.white, width: 1.2),
          ),
        ],
      ),
    );
  }
}
