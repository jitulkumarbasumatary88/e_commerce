import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_container.dart';

class GridViewProducts extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final IconData icon;
  final String text4;

  const GridViewProducts({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.icon,
    required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.blue,
      child: Column(
        spacing: 5,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomContainer(color: Colors.grey, height: 150),

          Text(maxLines: 1, overflow: TextOverflow.ellipsis, text1),

          Text(maxLines: 2, overflow: TextOverflow.ellipsis, text2),

          Text(text3),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++)
                  Icon(icon, color: i < 4 ? Colors.amber : Colors.grey),

                ContentSpace.sWidth,

                Text(text4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
