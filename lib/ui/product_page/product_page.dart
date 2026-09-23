import 'package:e_commerce_app/ui/product_page/widget/product_widget.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(10),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 320,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  return ProductWidget(
                    text1: 'Black Winter',
                    text2: 'Autumn And Winter Casual cotton-padded jacket',
                    text3: '₹499',
                    icon: Icons.star_rate_rounded,
                    text4: '6,890',
                  );
                }, childCount: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
