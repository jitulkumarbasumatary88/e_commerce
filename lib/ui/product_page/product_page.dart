import 'package:e_commerce_app/state_management/riverpod.dart';
import 'package:e_commerce_app/ui/product_page/widget/grid_view_products.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_header.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_sort_filter_bar.dart';
import 'package:e_commerce_app/ui/shop_page/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_bottom_nav_bar.dart';
import '../reusable_widgets/custom_search_bar.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gridProductsState = ref.watch(productsProvider);

    return Scaffold(
      // backgroundColor: Colors.yellow,
      body: gridProductsState.when(
        data: (gridProductsData) {
          final productsList = gridProductsData.products ?? [];

          return SafeArea(
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverPadding(
                  padding: const EdgeInsets.all(10),
                  sliver: SliverToBoxAdapter(child: CustomHeader()),
                ),

                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  sliver: PinnedHeaderSliver(child: CustomSearchBar()),
                ),
              ],

              body: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverPadding(
                    padding: EdgeInsets.all(10),
                    sliver: SliverMainAxisGroup(
                      slivers: [
                        SliverToBoxAdapter(
                          child: CustomSortFilterBar(
                            title:
                                '${gridProductsData.total ?? productsList.length}+ Items',
                          ),
                        ),

                        SliverToBoxAdapter(child: ContentSpace.mHeight),

                        SliverGrid(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                mainAxisExtent: 300,
                              ),
                          delegate: SliverChildBuilderDelegate((
                            context,
                            index,
                          ) {
                            final item = productsList[index];

                            return MediaQuery.withClampedTextScaling(
                              maxScaleFactor: 1,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(12),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ShopPage(product: item),
                                    ),
                                  );
                                },
                                child: GridViewProducts(
                                  imageURL: item.thumbnail,
                                  text1: item.title ?? 'No Title',
                                  text2: item.description ?? 'No description',
                                  text3: '\$${item.price ?? 0}',
                                  text4: '${item.rating ?? 0}',
                                ),
                              ),
                            );
                          }, childCount: productsList.length),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },

        loading: () => Center(child: CircularProgressIndicator()),

        error: (error, _) => Center(child: Text(error.toString())),
      ),

      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
