import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class ShopSizeSelector extends StatelessWidget {
  const ShopSizeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Size: 7UK'),

        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [
            for (int i = 0; i < 5; i++)
              CustomContainer(
                color: i == 1 ? Colors.pinkAccent : Colors.white,
                border: Border.all(color: Colors.pinkAccent, width: 2),
                child: Text(
                  '${6 + i} UK',
                  style: TextStyle(
                    color: i == 1 ? Colors.white : Colors.pinkAccent,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
