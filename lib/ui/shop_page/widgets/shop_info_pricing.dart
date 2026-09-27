import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';

class ShopInfoPricing extends StatelessWidget {
  const ShopInfoPricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Nike Sneakers'),

        Text('Vision Alta Men’s Shoes Size (All Colours)'),

        Row(
          children: [
            for (int i = 0; i < 5; i++)
              Icon(
                Icons.star_rate_rounded,
                color: i < 4 ? Colors.amber : Colors.grey,
              ),

            ContentSpace.sWidth,

            Text('56,890'),
          ],
        ),

        Row(
          spacing: 10,
          children: [
            Text(
              '₹2,999',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.grey,
                color: Colors.grey,
              ),
            ),

            Text('₹1,500'),

            Text('50% Off', style: TextStyle(color: Colors.pinkAccent)),
          ],
        ),

        Text('Product Details'),

        Text(
          maxLines: 5,
          overflow: TextOverflow.ellipsis,
          'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...More',
        ),
      ],
    );
  }
}
