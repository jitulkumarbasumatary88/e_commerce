import 'package:e_commerce_app/ui/home_page/widgets/b_banner.dart';
import 'package:e_commerce_app/ui/home_page/widgets/bottom_nav_bar.dart';
import 'package:e_commerce_app/ui/home_page/widgets/new_arrival_or_sponsor_banner.dart';
import 'package:e_commerce_app/ui/home_page/widgets/s_banner.dart';
import 'package:e_commerce_app/ui/home_page/widgets/three_dot_or_scroll.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_header.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_sort_filter_bar.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_horizontal_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: CustomScrollView(
        slivers: [
          ...buildCustomHeader(),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  CustomSortFilterBar(title: 'All Featured'),

                  ContentSpace.mHeight,

                  BBanner(
                    text1: '50 - 40% OFF',
                    text2: 'Now in (product)',
                    text3: 'All colours',
                    buttonText: 'Shop Now',
                    buttonIcon: Icons.arrow_forward_rounded,
                    backgroundColor: Colors.pinkAccent,
                    buttonColor: Colors.pinkAccent,
                    bannerIcon: Icons.image,
                  ),

                  ContentSpace.mHeight,

                  ThreeDotOrScroll(),

                  ContentSpace.mHeight,

                  SBanner(
                    text1: 'Deal of the Day',
                    icon: Icons.access_alarm_rounded,
                    text2: '22h 55m 20s remaining',
                    buttonText: 'View All',
                    buttonIcon: Icons.arrow_forward_rounded,
                    backgroundColor: Colors.blue,
                  ),

                  ContentSpace.mHeight,

                  CustomHorizontalList(),

                  ContentSpace.mHeight,

                  BBanner(
                    text1: 'Special Offers 😱',
                    text2: 'We make sure you get the offer you need at best prices',
                    bannerIcon: Icons.image,
                    isImageLeft: true,
                  ),

                  ContentSpace.mHeight,

                  BBanner(
                    text1: 'Flat and Heels',
                    text2: 'Stand a chance to get rewarded',
                    buttonText: 'Visit Now',
                    buttonIcon: Icons.arrow_forward_rounded,
                    buttonColor: Colors.pinkAccent,
                    bannerIcon: Icons.image,
                    isImageLeft: true,
                  ),

                  ContentSpace.mHeight,

                  SBanner(
                    text1: 'Trending Products',
                    icon: Icons.calendar_month_rounded,
                    text2: 'Last Date 29/02/22',
                    buttonText: 'View All',
                    buttonIcon: Icons.arrow_forward_rounded,
                    backgroundColor: Colors.pinkAccent,
                  ),

                  ContentSpace.mHeight,

                  CustomHorizontalList(),

                  ContentSpace.mHeight,

                  NewArrivalOrSponsorBanner(
                    text2: 'New Arrivals',
                    text3: 'Summer 25 Collections',
                    buttonText: 'View All',
                    buttonIcon: Icons.arrow_forward_rounded,
                    icon2: Icons.image,
                  ),

                  ContentSpace.mHeight,

                  NewArrivalOrSponsorBanner(
                    text1: 'Sponsored',
                    text2: 'up to 50% Off',
                    buttonIcon: Icons.arrow_forward_rounded,
                    icon2: Icons.image,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
