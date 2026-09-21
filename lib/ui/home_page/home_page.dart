import 'package:e_commerce_app/ui/home_page/widgets/b_banner.dart';
import 'package:e_commerce_app/ui/home_page/widgets/bottom_nav_bar.dart';
import 'package:e_commerce_app/ui/home_page/widgets/new_arrival_or_sponsor_banner.dart';
import 'package:e_commerce_app/ui/home_page/widgets/s_banner.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_box_reuse.dart';
import '../reusable_widgets/horizontal_list_products.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            floating: false,
            centerTitle: true,
            leading: Icon(Icons.menu_rounded),
            title: Text('Stylish'),
            actions: [
              CircleAvatar(
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                child: Icon(Icons.person_rounded),
              ),
            ],
          ),

          SliverAppBar(
            pinned: true,
            primary: false,
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            toolbarHeight: 65,
            title: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Search any Product...',
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: const Icon(Icons.mic_rounded),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: Text('All Featured')),
                    CustomBoxReuse(
                      child: Row(
                        children: [
                          Text('Sort'),
                          Icon(Icons.sort_by_alpha_rounded, size: 15),
                        ],
                      ),
                    ),
                    CustomBoxReuse(
                      child: Row(
                        children: [
                          Text('Filter'),
                          Icon(Icons.filter_list_rounded, size: 15),
                        ],
                      ),
                    ),
                  ],
                ),

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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 3; i++) ...[
                      CustomBoxReuse(
                        height: 5,
                        width: 30,
                        color: Colors.pinkAccent,
                      ),
                      if (i < 2) ContentSpace.sWidth,
                    ],
                  ],
                ),

                SBanner(
                  text1: 'Deal of the Day',
                  icon: Icons.access_alarm_rounded,
                  text2: '22h 55m 20s remaining',
                  buttonText: 'View All',
                  buttonIcon: Icons.arrow_forward_rounded,
                  backgroundColor: Colors.blue,
                ),

                HorizontalListProducts(),

                BBanner(
                  text1: 'Special Offers 😱',
                  text2:
                      'We make sure you get the offer you need at best prices',
                  bannerIcon: Icons.image,
                  isImageLeft: true,
                ),

                BBanner(
                  text1: 'Flat and Heels',
                  text2: 'Stand a chance to get rewarded',
                  buttonText: 'Visit Now',
                  buttonIcon: Icons.arrow_forward_rounded,
                  buttonColor: Colors.pinkAccent,
                  bannerIcon: Icons.image,
                  isImageLeft: true,
                ),

                SBanner(
                  text1: 'Trending Products',
                  icon: Icons.calendar_month_rounded,
                  text2: 'Last Date 29/02/22',
                  buttonText: 'View All',
                  buttonIcon: Icons.arrow_forward_rounded,
                  backgroundColor: Colors.pinkAccent,
                ),

                HorizontalListProducts(),

                NewArrivalOrSponsorBanner(
                  text2: 'New Arrivals',
                  text3: 'Summer 25 Collections',
                  buttonText: 'View All',
                  buttonIcon: Icons.arrow_forward_rounded,
                  icon2: Icons.image,
                ),

                NewArrivalOrSponsorBanner(
                  text1: 'Sponsored',
                  text2: 'up to 50% Off',
                  buttonIcon: Icons.arrow_forward_rounded,
                  icon2: Icons.image,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
