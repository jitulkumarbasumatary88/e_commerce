import 'package:e_commerce_app/a/core/app_routes.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/material.dart';

import 'widgets/product_action_section.dart';
import 'widgets/product_image_slider.dart';
import 'widgets/product_info_pricing.dart';
import 'widgets/product_similar_section.dart';
import 'widgets/product_size_selector.dart';

class ProductDetailScreen extends StatelessWidget {
  final Products? product;

  const ProductDetailScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final images =
        product?.images ??
        (product?.thumbnail != null ? [product!.thumbnail!] : <String>[]);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            PinnedHeaderSliver(
              child: AppContainer(
                borderRadius: BorderRadius.zero,

                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),

                    IconButton(
                      onPressed: () {
                        AppRoutes.toCartScreen(context, product: product);
                      },
                      icon: const Icon(Icons.shopping_cart_outlined),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 15,
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductImageSlider(images: images),

                    AppSpacing.h15,

                    if (product?.category?.contains('shoes') == true ||
                        product?.category?.contains('shirt') == true ||
                        product?.category?.contains('dress') == true ||
                        product?.category?.contains('tops') == true ||
                        product?.category?.contains('women-shoes') == true ||
                        product?.category?.contains('mens-shoes') == true) ...[
                      ProductSizeSelector(),

                      AppSpacing.h15,
                    ],

                    ProductInfoPricing(product: product),

                    AppSpacing.h15,

                    ProductActionSection(
                      product: product,
                      onGoToCartTap: () {},
                      onBuyNowTap: () {
                        AppRoutes.toCartScreen(context, product: product);
                      },
                    ),

                    AppSpacing.h15,

                    ProductSimilarSection(product: product),
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
