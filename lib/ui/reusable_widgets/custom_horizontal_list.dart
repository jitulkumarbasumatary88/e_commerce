import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return CustomContainer(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(height: 150, color: Colors.grey),
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
