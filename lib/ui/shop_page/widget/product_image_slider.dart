import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_box_reuse.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBoxReuse(color: Colors.grey, height: 200),

        ContentSpace.mHeight,

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 5; i++) ...[
              CustomBoxReuse(height: 5, width: 30, color: Colors.pinkAccent),
              if (i < 4) ContentSpace.sWidth,
            ],
          ],
        ),
      ],
    );
  }
}
