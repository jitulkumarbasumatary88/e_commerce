import 'package:e_commerce_app/ui/shop_page/widgets/shop_action_section.dart';
import 'package:e_commerce_app/ui/shop_page/widgets/shop_image_slider.dart';
import 'package:e_commerce_app/ui/shop_page/widgets/shop_info_pricing.dart';
import 'package:e_commerce_app/ui/shop_page/widgets/shop_similar_section.dart';
import 'package:e_commerce_app/ui/shop_page/widgets/shop_size_selector.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/custom_container.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          PinnedHeaderSliver(
            child: CustomContainer(
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
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShopImageSlider(),

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
    );
  }
}
