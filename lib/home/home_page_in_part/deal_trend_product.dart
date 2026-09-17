import 'package:flutter/material.dart';

import '../../reusable/custom_box_reuse.dart';

class DealTrendProduct extends StatelessWidget {
  final String text1;
  final IconData icon;
  final String text2;
  final String buttonText;
  final IconData buttonIcon;
  final Color backgroundColor;

  const DealTrendProduct({
    super.key,
    required this.text1,
    required this.icon,
    required this.text2,
    required this.buttonText,
    required this.buttonIcon,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CustomBoxReuse(
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1),

                Row(children: [Icon(icon), Text(text2)]),
              ],
            ),

            CustomBoxReuse(
              color: backgroundColor,
              border: Border.all(color: Colors.white),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [Text(buttonText), Icon(buttonIcon)],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
