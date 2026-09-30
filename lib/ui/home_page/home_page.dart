import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_commerce_app/state_management/riverpod.dart';
import 'package:e_commerce_app/ui/home_page/widgets/bottom_nav_bar.dart';
import 'package:e_commerce_app/ui/home_page/widgets/new_arrivals.dart';
import 'package:e_commerce_app/ui/home_page/widgets/offer_one.dart';
import 'package:e_commerce_app/ui/home_page/widgets/offer_three.dart';
import 'package:e_commerce_app/ui/home_page/widgets/s_banner.dart';
import 'package:e_commerce_app/ui/home_page/widgets/capsule_dot_scroll.dart';
import 'package:e_commerce_app/ui/home_page/widgets/offer_two.dart';
import 'package:e_commerce_app/ui/home_page/widgets/sponsored.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_header.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_sort_filter_bar.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/custom_horizontal_list.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsState = ref.watch(getProductsProvider);

    return Scaffold(
      // backgroundColor: Colors.green,
      body: productsState.when(
        data: (productsData) {
          final allProducts = productsData.products ?? [];

          final dealList = allProducts.take(10).toList();

          final trendingList = allProducts.skip(10).take(10).toList();

          return CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              ...buildCustomHeader(),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    spacing: 10,
                    children: [
                      CustomSortFilterBar(title: 'All Featured'),

                      OfferOne(),

                      CapsuleDotScroll(),

                      SBanner(
                        text1: 'Deal of the Day',
                        icon: Icons.access_alarm_rounded,
                        text2: '22h 55m 20s remaining',
                        backgroundColor: Colors.blue,
                      ),

                      CustomHorizontalList(items: dealList),

                      OfferTwo(),

                      OfferThree(),

                      SBanner(
                        text1: 'Trending Products',
                        icon: Icons.calendar_month_rounded,
                        text2: 'Last Date 29/02/22',
                        backgroundColor: Colors.pinkAccent,
                      ),

                      CustomHorizontalList(items: trendingList),

                      NewArrivals(),

                      Sponsored(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },

        error: (Object error, StackTrace stackTrace) =>
            Center(child: Text('Error: $error')),

        loading: () => const Center(child: CircularProgressIndicator()),
      ),

      bottomNavigationBar: BottomNavBar(),
    );
  }
}
