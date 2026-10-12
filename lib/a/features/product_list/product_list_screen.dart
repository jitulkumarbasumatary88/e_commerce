import 'package:e_commerce_app/a/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/app_colors.dart';
import '../../core/app_spacing.dart';
import '../../riverpod/product_riverpod.dart';
import '../../shared/app_header.dart';
import '../../shared/app_search_bar.dart';
import '../../shared/bottom_nav_bar.dart';
import '../../shared/filter_sort_bar.dart';
import '../../shared/product_card.dart';

class ProductListScreen extends ConsumerWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gridProductsState = ref.watch(productsProvider);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),

      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                sliver: SliverToBoxAdapter(child: AppHeader()),
              ),

              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                sliver: PinnedHeaderSliver(child: AppSearchBar()),
              ),
            ],

            body: gridProductsState.when(
              data: (gridProductsData) {
                final productsList = gridProductsData.products ?? [];

                return CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      sliver: SliverMainAxisGroup(
                        slivers: [
                          SliverToBoxAdapter(
                            child: FilterSortBar(
                              title:
                                  '${gridProductsData.total ?? productsList.length}+ Items',
                            ),
                          ),

                          const SliverToBoxAdapter(child: AppSpacing.h15),

                          SliverGrid(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 15,
                                  crossAxisSpacing: 15,
                                  mainAxisExtent: 300,
                                ),
                            delegate: SliverChildBuilderDelegate((
                              context,
                              index,
                            ) {
                              final item = productsList[index];

                              return ProductCard(
                                product: item,
                                onTap: () {
                                  AppRoutes.toProductDetailScreen(
                                    context,
                                    product: item,
                                  );
                                },
                              );
                            }, childCount: productsList.length),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },

              error: (error, _) => Center(child: Text(error.toString())),

              loading: () => const Center(
                child: CircularProgressIndicator(color: AppColors.pink),
              ),
            ),
          ),
        ),

        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
