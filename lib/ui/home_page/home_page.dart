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

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_horizontal_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          ...buildCustomHeader(),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  CustomSortFilterBar(title: 'All Featured'),

                  ContentSpace.mHeight,

                  OfferOne(),

                  ContentSpace.mHeight,

                  CapsuleDotScroll(),

                  ContentSpace.mHeight,

                  SBanner(
                    text1: 'Deal of the Day',
                    icon: Icons.access_alarm_rounded,
                    text2: '22h 55m 20s remaining',
                    backgroundColor: Colors.blue,
                  ),

                  ContentSpace.mHeight,

                  CustomHorizontalList(),

                  ContentSpace.mHeight,

                  OfferTwo(),

                  ContentSpace.mHeight,

                  OfferThree(),

                  ContentSpace.mHeight,

                  SBanner(
                    text1: 'Trending Products',
                    icon: Icons.calendar_month_rounded,
                    text2: 'Last Date 29/02/22',
                    backgroundColor: Colors.pinkAccent,
                  ),

                  ContentSpace.mHeight,

                  CustomHorizontalList(),

                  ContentSpace.mHeight,

                  NewArrivals(),

                  ContentSpace.mHeight,

                  Sponsored(),
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
