import 'package:e_commerce_app/ui/shop_page/widget/product_action_section.dart';
import 'package:e_commerce_app/ui/shop_page/widget/product_image_slider.dart';
import 'package:e_commerce_app/ui/shop_page/widget/product_info_pricing.dart';
import 'package:e_commerce_app/ui/shop_page/widget/product_similar_section.dart';
import 'package:e_commerce_app/ui/shop_page/widget/product_size_selector.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_box_reuse.dart';

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
                  ProductImageSlider(),
                  ContentSpace.mHeight,
                  ProductSizeSelector(),
                  ContentSpace.mHeight,
                  ProductInfoPricing(),
                  ContentSpace.mHeight,
                  ProductActionSection(),
                  ContentSpace.mHeight,
                  ProductSimilarSection(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
