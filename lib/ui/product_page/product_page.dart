import 'package:e_commerce_app/ui/product_page/widget/grid_view_products.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_header.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_sort_filter_bar.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            ...buildCustomHeader(),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: CustomSortFilterBar(title: '52,082+ Items'),
              ),
            ),

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
                  return GridViewProducts(
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
