import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_box_reuse.dart';
import '../reusable_widgets/horizontal_list_products.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          PinnedHeaderSliver(
            child: CustomBoxReuse(
              color: Colors.blue,
              borderRadius: BorderRadius.zero,
              child: SafeArea(
                bottom: false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new_rounded),
                    Icon(Icons.shopping_cart_rounded),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomBoxReuse(color: Colors.grey, height: 200),

                  ContentSpace.mHeight,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 5; i++) ...[
                        CustomBoxReuse(
                          height: 5,
                          width: 30,
                          color: Colors.pinkAccent,
                        ),
                        if (i < 4) ContentSpace.sWidth,
                      ],
                    ],
                  ),

                  ContentSpace.mHeight,

                  Text('Size: 7UK'),

                  ContentSpace.mHeight,

                  Row(
                    children: [
                      for (int i = 0; i < 5; i++) ...[
                        Flexible(
                          child: CustomBoxReuse(
                            border: Border.all(
                              color: Colors.pinkAccent,
                              width: 2,
                            ),
                            child: Text('6 UK'),
                          ),
                        ),
                        if (i < 4) ContentSpace.sWidth,
                      ],
                    ],
                  ),

                  ContentSpace.mHeight,

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

                  ContentSpace.mHeight,

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
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
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
                              Icon(
                                Icons.shopping_cart_rounded,
                                color: Colors.white,
                              ),
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

                  ContentSpace.mHeight,

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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
