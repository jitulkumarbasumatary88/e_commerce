import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/features/product_detail/product_detail_screen.dart';
import 'package:e_commerce_app/a/riverpod/product_riverpod.dart';
import 'package:e_commerce_app/a/shared/filter_sort_bar.dart';
import 'package:e_commerce_app/a/shared/product_horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Section showing horizontal carousel of items in the same category
class ProductSimilarSection extends ConsumerWidget {
  final Products? product;

  const ProductSimilarSection({super.key, this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch catalog products from Riverpod
    final productsState = ref.watch(productsProvider);

    return productsState.when(
      data: (productsData) {
        final allProducts = productsData.products ?? [];

        // Filter products with matching category excluding currently viewed product
        final similarList = allProducts
            .where(
              (p) => p.category == product?.category && p.id != product?.id,
            )
            .toList();

        // Fallback to allProducts if no specific matches found
        final displayList = similarList.isNotEmpty ? similarList : allProducts;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            Text(
              'Similar To',
              style: AppTextStyles.heading.copyWith(fontSize: 18),
            ),

            AppSpacing.h10,

            // Filter & Sort bar with items count
            FilterSortBar(title: '${displayList.length}+ Items'),

            AppSpacing.h15,

            // Horizontal Carousel of Similar Product Cards
            ProductHorizontalList(
              items: displayList,
              onProductTap: (selectedProduct) {
                // Navigate to selected product details
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailScreen(product: selectedProduct),
                  ),
                );
              },
            ),
          ],
        );
      },

      // Spinner while similar products load
      loading: () => const Center(
        child: CircularProgressIndicator(color: AppColors.pink),
      ),

      // Error fallback
      error: (error, _) => Center(
        child: Text('Error: $error'),
      ),
    );
  }
}
