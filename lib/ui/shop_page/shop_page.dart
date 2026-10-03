import 'package:e_commerce_app/ui/shop_page/widgets/shop_action_section.dart';
import 'package:e_commerce_app/ui/shop_page/widgets/shop_image_slider.dart';
import 'package:e_commerce_app/ui/shop_page/widgets/shop_info_pricing.dart';
import 'package:e_commerce_app/ui/shop_page/widgets/shop_similar_section.dart';
import 'package:e_commerce_app/ui/shop_page/widgets/shop_size_selector.dart';
import 'package:flutter/material.dart';

import '../../model/products_model.dart';
import '../reusable_widgets/custom_container.dart';

class ShopPage extends StatelessWidget {
  final Products? product;

  const ShopPage({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            PinnedHeaderSliver(
              child: CustomContainer(
                color: Colors.white,
                borderRadius: BorderRadius.zero,
                child: SafeArea(
                  bottom: false,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_cart_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShopImageSlider(
                      images:
                          product?.images ??
                          (product?.thumbnail != null
                              ? [product!.thumbnail!]
                              : []),
                    ),

                    ShopSizeSelector(),

                    ShopInfoPricing(),

                    ShopActionSection(),

                    ShopSimilarSection(),
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
