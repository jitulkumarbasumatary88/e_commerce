import 'package:e_commerce_app/state_management/riverpod.dart';
import 'package:e_commerce_app/ui/product_page/widget/grid_view_products.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_header.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_sort_filter_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../reusable_widgets/custom_search_bar.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gridProductsState = ref.watch(productsProvider);

    return Scaffold(
      body: gridProductsState.when(
        data: (gridProductsData) {
          final productsList = gridProductsData.products ?? [];

          return SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: CustomHeader()),

                PinnedHeaderSliver(child: CustomSearchBar()),

                SliverToBoxAdapter(
                  child: CustomSortFilterBar(
                    title:
                        '${gridProductsData.total ?? productsList.length}+ Items',
                  ),
                ),

                SliverPadding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 300,
                    ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final item = productsList[index];

                      return MediaQuery.withClampedTextScaling(
                        maxScaleFactor: 1,
                        child: GridViewProducts(
                          imageURL: item.thumbnail,
                          text1: item.title ?? 'No Title',
                          text2: item.description ?? 'No description',
                          text3: '\$${item.price ?? 0}',
                          text4: '${item.rating ?? 0}',
                        ),
                      );
                    }, childCount: productsList.length),
                  ),
                ),
              ],
            ),
          );
        },
        error: (error, _) => Center(child: Text(error.toString())),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
