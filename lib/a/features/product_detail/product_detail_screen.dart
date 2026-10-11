import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/material.dart';

import 'widgets/product_action_section.dart';
import 'widgets/product_image_slider.dart';
import 'widgets/product_info_pricing.dart';
import 'widgets/product_similar_section.dart';
import 'widgets/product_size_selector.dart';

/// Screen presenting complete product details, image carousel, size selection, pricing, and actions
class ProductDetailScreen extends StatelessWidget {
  final Products? product;

  const ProductDetailScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    // Extract product images or fallback to single thumbnail
    final images = product?.images ??
        (product?.thumbnail != null ? [product!.thumbnail!] : <String>[]);

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            // Top Pinned Navigation Bar with Back Button and Cart Action
            PinnedHeaderSliver(
              child: AppContainer(
                color: AppColors.white,
                borderRadius: BorderRadius.zero,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back arrow icon
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    ),

                    // Shopping cart shortcut icon
                    IconButton(
                      onPressed: () {
                        // Navigate to Cart/Checkout
                      },
                      icon: const Icon(Icons.shopping_cart_outlined),
                    ),
                  ],
                ),
              ),
            ),

            // Scrollable Content Body
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 1. Image Slider Carousel with Indicator dots
                    ProductImageSlider(images: images),

                    AppSpacing.h15,

                    // 2. Size Selector (Shown only for wearable/apparel items)
                    if (product?.category?.contains('shoes') == true ||
                        product?.category?.contains('shirt') == true ||
                        product?.category?.contains('dress') == true ||
                        product?.category?.contains('tops') == true ||
                        product?.category?.contains('womens-shoes') == true ||
                        product?.category?.contains('mens-shoes') == true) ...[
                      const ProductSizeSelector(),
                      AppSpacing.h15,
                    ],

                    // 3. Product Title, Brand, Ratings, and Pricing with Discount
                    ProductInfoPricing(product: product),

                    AppSpacing.h15,

                    // 4. Action Section: Tags, Go to Cart & Buy Now buttons, Delivery banner
                    ProductActionSection(
                      product: product,
                      onGoToCartTap: () {
                        // Will connect to Cart screen
                      },
                      onBuyNowTap: () {
                        // Will connect to Checkout screen
                      },
                    ),

                    AppSpacing.h20,

                    // 5. Similar Products Carousel
                    ProductSimilarSection(product: product),

                    AppSpacing.h20,
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
