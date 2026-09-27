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
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(height: 150, color: Colors.grey),

                Text('Nike Sneakers'),

                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'Nike Air Jordan Retro 1 Low Mystic Black',
                ),

                Text('₹1,900'),

                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.star_rate_rounded,
                        color: i < 4 ? Colors.amber : Colors.grey,
                      ),

                    ContentSpace.sWidth,

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
