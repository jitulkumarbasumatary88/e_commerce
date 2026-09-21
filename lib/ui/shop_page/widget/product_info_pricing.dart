import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';

class ProductInfoPricing extends StatelessWidget {
  const ProductInfoPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nike Sneakers'),

        ContentSpace.mHeight,

        Text('Vision Alta Men’s Shoes Size (All Colours)'),

        ContentSpace.mHeight,

        Row(
          children: [
            for (int i = 0; i < 5; i++)
              Icon(Icons.star_rate_rounded, color: Colors.amber),
            ContentSpace.mWidth,
            Text('56,890'),
          ],
        ),

        ContentSpace.mHeight,

        Row(
          children: [
            Text(
              '₹2,999',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.grey,
                color: Colors.grey,
              ),
            ),
            ContentSpace.mWidth,
            Text('₹1,500'),
            ContentSpace.mWidth,
            Text('50% Off'),
          ],
        ),

        ContentSpace.mHeight,

        Text('Product Details'),

        ContentSpace.mHeight,

        Text(
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
        ),
      ],
    );
  }
}
