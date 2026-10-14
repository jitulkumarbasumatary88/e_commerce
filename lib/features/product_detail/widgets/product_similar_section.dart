import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';
import '../../../data/products_model.dart';
import '../../../riverpod/product_riverpod.dart';
import '../../../shared/filter_sort_bar.dart';
import '../../../shared/product_horizontal_list.dart';
import '../product_detail_screen.dart';

class ProductSimilarSection extends ConsumerWidget {
  final Products? product;

  const ProductSimilarSection({super.key, this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsState = ref.watch(productsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Similar To', style: AppTextStyles.heading),

        AppSpacing.h10,

        productsState.when(
          data: (productsData) {
            final allProducts = productsData.products ?? [];

            final similarList = allProducts
                .where(
                  (p) => p.category == product?.category && p.id != product?.id,
                )
                .toList();

            final displayList = similarList.isNotEmpty
                ? similarList
                : allProducts;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FilterSortBar(title: '${displayList.length}+ Items'),

                AppSpacing.h15,

                ProductHorizontalList(
                  items: displayList,
                  onProductTap: (selectedProduct) {
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

          error: (error, _) => Center(child: Text('Error: $error')),

          loading: () => const Center(
            child: CircularProgressIndicator(color: AppColors.pink),
          ),
        ),
      ],
    );
  }
}
