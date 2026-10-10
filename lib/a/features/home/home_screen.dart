import 'package:e_commerce_app/a/features/home/widgets/category_selector.dart';
import 'package:e_commerce_app/a/features/home/widgets/deal_banner.dart';
import 'package:e_commerce_app/a/features/home/widgets/discount_banner.dart';
import 'package:e_commerce_app/a/features/home/widgets/flat_heels_card.dart';
import 'package:e_commerce_app/a/shared/bottom_nav_bar.dart';
import 'package:e_commerce_app/a/features/home/widgets/new_arrivals_card.dart';
import 'package:e_commerce_app/a/features/home/widgets/special_offer_card.dart';
import 'package:e_commerce_app/a/features/home/widgets/sponsored_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/app_colors.dart';
import '../../core/app_spacing.dart';
import '../../riverpod/product_riverpod.dart';
import '../../shared/app_header.dart';
import '../../shared/app_search_bar.dart';
import '../../shared/filter_sort_bar.dart';
import '../../shared/product_horizontal_list.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsState = ref.watch(productsProvider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  sliver: SliverToBoxAdapter(child: AppHeader()),
                ),

                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  sliver: PinnedHeaderSliver(child: AppSearchBar()),
                ),
              ];
            },

            body: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FilterSortBar(title: 'All Featured'),

                        AppSpacing.h15,

                        CategorySelector(),

                        AppSpacing.h15,

                        DiscountBanner(),

                        AppSpacing.h15,

                        DealBanner(
                          text1: 'Deal of the Day',
                          icon: Icons.alarm,
                          text2: '22h 55m 20s remaining',
                          backgroundColor: AppColors.blue,
                        ),

                        AppSpacing.h15,

                        productsState.when(
                          data: (productsData) {
                            final allProducts = productsData.products ?? [];
                            final dealList = allProducts.take(10).toList();

                            return ProductHorizontalList(
                              items: dealList,
                              onProductTap: (product) {},
                            );
                          },

                          loading: () => const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.pink,
                            ),
                          ),

                          error: (error, stack) =>
                              Center(child: Text('Error: $error')),
                        ),

                        AppSpacing.h15,

                        SpecialOfferCard(),

                        AppSpacing.h15,

                        FlatHeelsCard(),

                        AppSpacing.h15,

                        DealBanner(
                          text1: 'Trending Products',
                          icon: Icons.calendar_month_rounded,
                          text2: 'Last Date 29/02/9999',
                          backgroundColor: AppColors.pink,
                        ),

                        AppSpacing.h15,

                        productsState.when(
                          data: (productsData) {
                            final allProducts = productsData.products ?? [];
                            final dealList = allProducts
                                .skip(10)
                                .take(10)
                                .toList();

                            return ProductHorizontalList(
                              items: dealList,
                              onProductTap: (product) {},
                            );
                          },

                          loading: () => const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.pink,
                            ),
                          ),

                          error: (error, stack) =>
                              Center(child: Text('Error: $error')),
                        ),

                        AppSpacing.h15,

                        NewArrivalsCard(),

                        AppSpacing.h15,

                        SponsoredCard(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
