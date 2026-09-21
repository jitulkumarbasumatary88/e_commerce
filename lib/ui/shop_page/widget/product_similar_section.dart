import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_box_reuse.dart';
import '../../reusable_widgets/horizontal_list_products.dart';

class ProductSimilarSection extends StatelessWidget {
  const ProductSimilarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Similar To'),

        ContentSpace.mHeight,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('282+ Items'),
            Row(
              children: [
                for (int i = 0; i < 2; i++) ...[
                  CustomBoxReuse(
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Text('Sort'),
                        ContentSpace.sWidth,
                        Icon(Icons.sort_rounded),
                      ],
                    ),
                  ),
                  if (i < 1) ContentSpace.sWidth,
                ],
              ],
            ),
          ],
        ),

        ContentSpace.mHeight,

        HorizontalListProducts(),
      ],
    );
  }
}
