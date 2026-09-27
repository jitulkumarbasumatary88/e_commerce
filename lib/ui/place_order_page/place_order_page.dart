import 'package:e_commerce_app/ui/place_order_page/widget/bottom_nav_button.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/custom_container.dart';

class PlaceOrderPage extends StatelessWidget {
  const PlaceOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          PinnedHeaderSliver(
            child: CustomContainer(
              color: Colors.blue,
              borderRadius: BorderRadius.zero,
              child: SafeArea(
                bottom: false,
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_rounded),
                    Expanded(
                      child: Text(textAlign: TextAlign.center, 'Shopping Bag'),
                    ),
                    Icon(CupertinoIcons.heart),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 30,
                children: [
                  Column(
                    spacing: 5,
                    children: [
                      CustomContainer(
                        height: 80,
                        width: 80,
                        color: Colors.grey,
                      ),

                      Text("Women's Casual Wear"),

                      Text('Checked Single-Breasted Blazer'),

                      Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            buttonText: 'Size 42',
                            textColor: Colors.black,
                            buttonIcon: Icons.arrow_drop_down_rounded,
                            buttonIconColor: Colors.black,
                            buttonBgColor: Colors.grey,
                          ),

                          CustomButton(
                            buttonText: 'Qty 1',
                            textColor: Colors.black,
                            buttonIcon: Icons.arrow_drop_down_rounded,
                            buttonIconColor: Colors.black,
                            buttonBgColor: Colors.grey,
                          ),
                        ],
                      ),

                      Row(
                        spacing: 5,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Delivery by'),

                          Text(
                            '10 May 2XXX',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    spacing: 5,
                    children: [
                      Icon(CupertinoIcons.ticket),

                      Text('Apply Coupons'),

                      Spacer(),

                      Text('Select'),
                    ],
                  ),

                  Divider(color: Colors.grey),

                  // Payment Details
                  Text('Other Payment Details'),

                  Row(
                    children: [
                      Text('Order Amounts'),
                      Spacer(),
                      Text('7,000.00'),
                    ],
                  ),

                  Row(
                    spacing: 5,
                    children: [
                      Text('Order Amounts'),

                      Text(
                        'Know More',
                        style: TextStyle(color: Colors.pinkAccent),
                      ),

                      Spacer(),

                      Text(
                        'Apply Coupon',
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                    ],
                  ),

                  Row(children: [Text('Delivery Fee'), Spacer(), Text('Free')]),

                  Divider(color: Colors.grey),

                  // Order Total
                  Row(
                    children: [Text('Order Total'), Spacer(), Text('7,000.00')],
                  ),

                  Row(
                    spacing: 5,
                    children: [
                      Text('EMI Available'),

                      Text(
                        'Details',
                        style: TextStyle(color: Colors.pinkAccent),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavButton(),
    );
  }
}
