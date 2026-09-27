import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class ShopImageSlider extends StatelessWidget {
  const ShopImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        CustomContainer(color: Colors.grey, height: 200),

        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++)
              CustomContainer(
                height: 5,
                width: 25,
                color: i == 0 ? Colors.pinkAccent : Colors.grey,
              ),
          ],
        ),
      ],
    );
  }
}
