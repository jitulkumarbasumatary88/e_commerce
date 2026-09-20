import 'package:flutter/material.dart';

import '../../../reusable/custom_box_reuse.dart';

class HorizontalScrollProduct extends StatelessWidget {
  const HorizontalScrollProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CustomBoxReuse(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomBoxReuse(
                        color: Colors.grey,
                        height: 200,
                        width: 250,
                      ),

                      Text(
                        'Women Printed Kurta',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Text(
                        'Neque porro quisquam est qui dolorem ipsum quia',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                      Text('₹1500'),

                      Row(
                        children: [
                          Text(
                            '₹2499',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.grey,
                            ),
                          ),

                          Text('40%Off'),
                        ],
                      ),

                      Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Icon(Icons.star_rate_rounded, color: Colors.amber),

                          Text('56890'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
