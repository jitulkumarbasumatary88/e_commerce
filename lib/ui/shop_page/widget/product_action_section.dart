import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_box_reuse.dart';

class ProductActionSection extends StatelessWidget {
  const ProductActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [
            for (int i = 0; i < 3; i++)
              CustomBoxReuse(
                padding: EdgeInsets.only(top: 2, bottom: 2, right: 2),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Colors.grey,
                      size: 14,
                    ),
                    Text(
                      'Nearest Store',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
          ],
        ),

        ContentSpace.mHeight,

        Row(
          children: [
            for (int i = 0; i < 2; i++) ...[
              CustomBoxReuse(
                color: Colors.blue,
                child: Row(
                  children: [
                    Icon(Icons.shopping_cart_rounded, color: Colors.white),
                    ContentSpace.sWidth,
                    Text('Go to cart'),
                  ],
                ),
              ),
              if (i < 1) ContentSpace.sWidth,
            ],
          ],
        ),

        ContentSpace.mHeight,

        CustomBoxReuse(
          width: double.infinity,
          color: Colors.pinkAccent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Delivery in'),
              ContentSpace.sHeight,
              Text('1 within Hour'),
            ],
          ),
        ),

        ContentSpace.mHeight,

        Row(
          children: [
            for (int i = 0; i < 2; i++) ...[
              Expanded(
                child: CustomBoxReuse(
                  border: Border.all(color: Colors.grey),
                  child: Row(
                    children: [
                      Icon(Icons.remove_red_eye_rounded),
                      ContentSpace.sWidth,
                      Text('View Similar'),
                    ],
                  ),
                ),
              ),
              if (i < 1) ContentSpace.sWidth,
            ],
          ],
        ),
      ],
    );
  }
}
