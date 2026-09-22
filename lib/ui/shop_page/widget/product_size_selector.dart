import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_container.dart';

class ProductSizeSelector extends StatelessWidget {
  const ProductSizeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text('Size: 7UK'),

        ContentSpace.mHeight,

        Row(
          children: [
            for (int i = 0; i < 5; i++) ...[
              Flexible(
                child: CustomContainer(
                  border: Border.all(color: Colors.pinkAccent, width: 2),
                  child: Text('6 UK'),
                ),
              ),
              if (i < 4) ContentSpace.sWidth,
            ],
          ],
        ),
      ],
    );
  }
}
