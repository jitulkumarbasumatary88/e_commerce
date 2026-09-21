import 'package:flutter/material.dart';

import 'constant.dart';
import 'custom_box_reuse.dart';

class HorizontalListProducts extends StatelessWidget {
  const HorizontalListProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomBoxReuse(
            width: 200,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBoxReuse(height: 150),
                ContentSpace.mHeight,
                Text('Nike Sneakers'),
                ContentSpace.sHeight,
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'Nike Air Jordan Retro 1 Low Mystic Black',
                ),
                ContentSpace.sHeight,
                Text('₹1,900'),
                ContentSpace.sHeight,
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(Icons.star_rate_rounded, color: Colors.amber),
                    ContentSpace.mWidth,
                    Text('46,890'),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return ContentSpace.mWidth;
        },
      ),
    );
  }
}
