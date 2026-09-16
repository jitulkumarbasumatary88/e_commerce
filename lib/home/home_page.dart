import 'package:flutter/material.dart';

import '../reusable/constant.dart';
import '../reusable/custom_box_reuse.dart';
import 'home_page_in_part/big_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // App Bar

            // 1. Stylish App Bar (Scroll karne par upar gayab ho jayega)
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

            // 2. Search Bar (Jaise hi Stylish upar jayega, yeh TOP par aakar CHIPAK jayega)
            SliverAppBar(
              pinned: true,
              primary: false,
              // Taaki status bar ka extra gap na aaye
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
                  fillColor: Colors.blue,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // SliverAppBar(
            //   centerTitle: true,
            //
            //   leading: Icon(Icons.menu_rounded),
            //
            //   title: Text('Stylish'),
            //
            //   actions: [
            //     CircleAvatar(
            //       backgroundColor: Colors.redAccent,
            //       foregroundColor: Colors.white,
            //       child: Icon(Icons.person_rounded),
            //     ),
            //   ],
            // ),
            //
            // SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),
            //
            // // Search Bar
            // SliverToBoxAdapter(
            //
            //   child: TextField(
            //     textAlignVertical: TextAlignVertical.center,
            //
            //     decoration: InputDecoration(
            //       hintText: 'Search any Product...',
            //       prefixIcon: Icon(Icons.search_rounded),
            //       suffixIcon: Icon(Icons.mic_rounded),
            //
            //       filled: true,
            //       fillColor: Colors.blue,
            //
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(12),
            //         borderSide: BorderSide.none,
            //       ),
            //     ),
            //   ),
            // ),
            SliverToBoxAdapter(child: ContentSpace.mHeight),

            // All Featured with two Buttons
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'All Featured',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  CustomBoxReuse(
                    child: Row(
                      children: [
                        Text(
                          'Sort',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(width: 5),

                        Icon(Icons.sort_by_alpha_rounded, size: 15),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),

                  CustomBoxReuse(
                    child: Row(
                      children: [
                        Text(
                          'Filter',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(width: 5),

                        Icon(Icons.filter_list_rounded, size: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SliverToBoxAdapter(child: ContentSpace.mHeight),

            // Five Categories in Circle
            // abhi keh liye judgad 6 hain
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 6; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: _buildProductItem(),
                      ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            ////////// 1 - Big Banner //////////
            SliverToBoxAdapter(
              child: BigBanner(
                text1: '50 - 40% OFF',
                text2: 'Now in (product)',
                text3: 'All colours',
                buttonText: 'Shop Now',
                icon: Icons.arrow_forward_rounded,
                backgroundColor: Colors.pinkAccent,
                buttonColor: Colors.pinkAccent,
                bannerIcon: Icons.image,
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            // Three Dots
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildThreeDot(),

                  SizedBox(width: 5),

                  _buildThreeDot(color: Colors.pinkAccent),

                  SizedBox(width: 5),

                  _buildThreeDot(),
                ],
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            // Deal of the Day
            SliverToBoxAdapter(
              child: CustomBoxReuse(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Deal of the Day'),

                        Row(
                          children: [
                            Icon(Icons.access_alarm_rounded),

                            SizedBox(width: 5),

                            Text('22h 55m 20s remaining'),
                          ],
                        ),
                      ],
                    ),

                    CustomBoxReuse(
                      color: Colors.blue,
                      border: Border.all(color: Colors.white),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('View All'),

                          SizedBox(width: 5),

                          Icon(Icons.arrow_forward_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            // Products Horizontal
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: _buildDealProduct(),
                      ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            // Special Offers
            SliverToBoxAdapter(
              // child: CustomBoxReuse(
              //   color: Colors.blue,
              //   child: Row(
              //     children: [
              //       // Temporary
              //       Container(
              //         height: 120,
              //         width: 100,
              //         decoration: BoxDecoration(
              //           color: Colors.white24,
              //           borderRadius: BorderRadius.circular(12),
              //         ),
              //         child: const Icon(
              //           Icons.person_pin,
              //           size: 90,
              //           color: Colors.white,
              //         ),
              //       ),
              //
              //       // Temporary
              //       SizedBox(width: AppSize.mWidth),
              //
              //       Expanded(
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text('Special Offers 😱'),
              //
              //             Text(
              //               'We make sure you get the offer you need at best prices',
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              child: BigBanner(
                text1: 'Special Offers 😱',
                text2: 'We make sure you get the offer you need at best prices',
                backgroundColor: Colors.blue,
                bannerIcon: Icons.image,
                isImageLeft: true,
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            ////////// 2 - Big Banner //////////
            SliverToBoxAdapter(
              // child: CustomBoxReuse(
              //   color: Colors.blue,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       // Temporary
              //       Container(
              //         height: 120,
              //         width: 100,
              //         decoration: BoxDecoration(
              //           color: Colors.white24,
              //           borderRadius: BorderRadius.circular(12),
              //         ),
              //         child: const Icon(
              //           Icons.person_pin,
              //           size: 90,
              //           color: Colors.white,
              //         ),
              //       ),
              //
              //       // Temporary
              //       SizedBox(width: AppSize.mWidth),
              //
              //       Expanded(
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text('Flat and Heels'),
              //
              //             SizedBox(height: AppSize.mHeight),
              //
              //             Text('Stand a chance to get rewarded'),
              //
              //             SizedBox(height: AppSize.mHeight),
              //
              //             CustomBoxReuse(
              //               color: Colors.redAccent,
              //               border: Border.all(color: Colors.white),
              //               child: Row(
              //                 mainAxisSize: MainAxisSize.min,
              //                 children: [
              //                   Text('Visit now'),
              //
              //                   SizedBox(width: 5),
              //
              //                   Icon(Icons.arrow_forward_rounded),
              //                 ],
              //               ),
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              child: BigBanner(
                text1: 'Flat and Heels',
                text2: 'Stand a chance to get rewarded',
                icon: Icons.arrow_forward_rounded,
                backgroundColor: Colors.green,
                bannerIcon: Icons.image,
                isImageLeft: true,
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            // Trending Products
            SliverToBoxAdapter(
              child: CustomBoxReuse(
                color: Colors.pinkAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Trending Products'),

                        Row(
                          children: [
                            Icon(Icons.calendar_month_rounded),

                            SizedBox(width: 5),

                            Text('Last Date 29/02/22'),
                          ],
                        ),
                      ],
                    ),

                    CustomBoxReuse(
                      color: Colors.pinkAccent,
                      border: Border.all(color: Colors.white),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('View All'),

                          SizedBox(width: 5),

                          Icon(Icons.arrow_forward_rounded),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            // Products Horizontal
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: _buildDealProduct(),
                      ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            // New Arrivals //////////////////////////////////
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sponsored'),

                    SizedBox(height: AppSize.mHeight),

                    // Temporary
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.person_pin,
                        size: 90,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: AppSize.mHeight),

                    // Text('New Arrivals '),

                    // SizedBox(height: AppSize.mHeight),
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('New Arrivals '),

                              Text('Summer’ 25 Collections'),
                            ],
                          ),
                        ),

                        CustomBoxReuse(
                          color: Colors.pinkAccent,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('View All'),

                              SizedBox(width: 5),

                              Icon(Icons.arrow_forward_rounded),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: AppSize.mHeight)),

            // Sponsored ////////////////////////////////
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sponsored'),

                    SizedBox(height: AppSize.mHeight),

                    // Temporary
                    Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.person_pin,
                        size: 90,
                        color: Colors.white,
                      ),
                    ),

                    SizedBox(height: AppSize.mHeight),

                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(child: Text('up to 50% Off')),

                        Icon(Icons.arrow_forward_rounded),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        // 0 matlab pehla item (Home) active rahega
        type: BottomNavigationBarType.fixed,
        // Saare 4 items screen pe barabar fix rahenge
        backgroundColor: Colors.white,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.black54,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Setting',
          ),
        ],
      ),
    );
  }

  // _buildProductItem
  Widget _buildProductItem() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 30),

          SizedBox(height: 5),

          Text(
            'Product',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // _buildThreeDot
  Widget _buildThreeDot({Color? color}) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: color ?? Colors.blue, //change later
        shape: BoxShape.circle,
      ),
    );
  }

  // _buildDealProduct
  Widget _buildDealProduct() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          SizedBox(height: 5),

          Text(
            'Women Printed Kurta',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          SizedBox(height: 5),

          Text(
            'Neque porro quisquam est qui dolorem ipsum quia',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          SizedBox(height: 5),

          Text('₹1500'),

          Row(
            children: [
              Text(
                '₹2499',
                style: TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.grey,
                ),
              ),

              SizedBox(width: 5),

              Text('40%Off'),
            ],
          ),

          SizedBox(height: 5),

          Row(
            children: [
              for (int i = 0; i < 5; i++)
                Icon(Icons.star_rounded, color: Colors.amber),

              SizedBox(width: 5),

              Text('56890'),
            ],
          ),
        ],
      ),
    );
  }
}
