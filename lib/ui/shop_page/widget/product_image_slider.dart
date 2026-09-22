import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_container.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(color: Colors.grey, height: 200),

        ContentSpace.mHeight,

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++) ...[
              CustomContainer(height: 5, width: 30, color: Colors.pinkAccent),
              if (i < 4) ContentSpace.sWidth,
            ],
          ],
        ),
      ],
    );
  }
}
