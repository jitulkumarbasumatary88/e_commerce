import 'package:flutter/material.dart';

import 'grid_reuse/product_grid_box.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 300,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return ProductGridBox(
                iconImage: Icons.image,
                text1: 'Black Winter',
                text2: 'Autumn And Winter Casual cotton-padded jacket',
                text3: '₹499',
                icon: Icons.star_rate_rounded,
                text4: '6,890',
              );
            }, childCount: 10),
          ),
        ],
      ),
    );
  }
}
