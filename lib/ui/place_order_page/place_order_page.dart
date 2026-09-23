import 'package:e_commerce_app/ui/place_order_page/widget/bottom_nav_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_container.dart';

class PlaceOrderPage extends StatelessWidget {
  const PlaceOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                children: [
                  Column(
                    children: [
                      CustomContainer(
                        height: 80,
                        width: 80,
                        color: Colors.grey,
                      ),

                      Text("Women's Casual Wear"),

                      Text('Checked Single-Breasted Blazer'),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 2; i++) ...[
                            CustomContainer(
                              padding: EdgeInsets.only(left: 8),
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: Colors.grey),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Size 42',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Icon(Icons.arrow_drop_down_rounded),
                                ],
                              ),
                            ),
                            if (i < 1) ContentSpace.mWidth,
                          ],
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Delivery by'),
                          ContentSpace.sWidth,
                          Text(
                            '10 May 2XXX',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),

                  ContentSpace.lHeight,

                  Row(
                    children: [
                      Icon(CupertinoIcons.ticket),
                      ContentSpace.sWidth,
                      Text('Apply Coupons'),
                      Spacer(),
                      Text('Select'),
                    ],
                  ),

                  ContentSpace.lHeight,
                  Divider(color: Colors.grey),
                  ContentSpace.lHeight,

                  // Payment Details
                  Text('Other Payment Details'),
                  ContentSpace.lHeight,
                  Row(
                    children: [
                      Text('Order Amounts'),
                      Spacer(),
                      Text('7,000.00'),
                    ],
                  ),
                  ContentSpace.mHeight,
                  Row(
                    children: [
                      Text('Order Amounts'),
                      ContentSpace.mWidth,
                      Text('Know More', style: TextStyle(color: Colors.red)),
                      Spacer(),
                      Text('Apply Coupon', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                  ContentSpace.mHeight,
                  Row(children: [Text('Delivery Fee'), Spacer(), Text('Free')]),

                  ContentSpace.lHeight,
                  Divider(color: Colors.grey),
                  ContentSpace.lHeight,

                  // Order Total
                  Row(
                    children: [Text('Order Total'), Spacer(), Text('7,000.00')],
                  ),
                  ContentSpace.mHeight,
                  Row(
                    children: [
                      Text('EMI Available'),
                      ContentSpace.mWidth,
                      Text('Details', style: TextStyle(color: Colors.red)),
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
