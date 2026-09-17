import 'package:e_commerce_app/bar/bottom_nav_bar.dart';
import 'package:e_commerce_app/home/home_page_in_part/deal_trend_product.dart';
import 'package:e_commerce_app/home/home_page_in_part/featured_items.dart';
import 'package:e_commerce_app/home/home_page_in_part/home_app_bar.dart';
import 'package:e_commerce_app/home/home_page_in_part/horizontal_scroll_product.dart';
import 'package:e_commerce_app/home/home_page_in_part/new_spon_card.dart';
import 'package:flutter/material.dart';

import 'home_page_in_part/big_banner.dart';
import 'home_page_in_part/circle_cat_product.dart';
import 'home_page_in_part/search_app_bar.dart';
import '../reusable/constant.dart';
import 'home_page_in_part/three_dot.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            ////////// App Bar //////////
            HomeAppBar(),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// Search App Bar //////////
            SearchAppBar(),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// Featured Items //////////
            FeaturedItems(),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// Circle Cat Product //////////
            CircleCatProduct(),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 1 - Big Banner //////////
            BigBanner(
              text1: '50 - 40% OFF',
              text2: 'Now in (product)',
              text3: 'All colours',
              buttonText: 'Shop Now',
              buttonIcon: Icons.arrow_forward_rounded,
              backgroundColor: Colors.pinkAccent,
              buttonColor: Colors.pinkAccent,
              bannerIcon: Icons.image,
            ),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            // Three Dots
            ThreeDot(),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 1 - Deal Trend Product //////////
            DealTrendProduct(
              text1: 'Deal of the Day',
              icon: Icons.access_alarm_rounded,
              text2: '22h 55m 20s remaining',
              buttonText: 'View All',
              buttonIcon: Icons.arrow_forward_rounded,
              backgroundColor: Colors.blue,
            ),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 1 - Horizontal Scroll Product //////////
            HorizontalScrollProduct(),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 2 - Big Banner //////////
            BigBanner(
              text1: 'Special Offers 😱',
              text2: 'We make sure you get the offer you need at best prices',
              bannerIcon: Icons.image,
              isImageLeft: true,
            ),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 3 - Big Banner //////////
            BigBanner(
              text1: 'Flat and Heels',
              text2: 'Stand a chance to get rewarded',
              buttonText: 'Visit Now',
              buttonIcon: Icons.arrow_forward_rounded,
              buttonColor: Colors.pinkAccent,
              bannerIcon: Icons.image,
              isImageLeft: true,
            ),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 2 - Deal Trend Product //////////
            DealTrendProduct(
              text1: 'Trending Products',
              icon: Icons.calendar_month_rounded,
              text2: 'Last Date 29/02/22',
              buttonText: 'View All',
              buttonIcon: Icons.arrow_forward_rounded,
              backgroundColor: Colors.pinkAccent,
            ),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 2 - Horizontal Scroll Product //////////
            HorizontalScrollProduct(),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 1 - New Spon Card //////////
            NewSponCard(
              text2: 'New Arrivals',
              text3: 'Summer 25 Collections',
              buttonText: 'View All',
              buttonIcon: Icons.arrow_forward_rounded,
              icon2: Icons.image,
            ),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            ////////// 2 - New Spon Card //////////
            NewSponCard(
              text1: 'Sponsored',
              text2: 'up to 50% Off',
              buttonIcon: Icons.arrow_forward_rounded,
              icon2: Icons.image,
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavBar(),
    );
  }
}
