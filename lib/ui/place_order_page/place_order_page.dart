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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Variations :'),
                          CustomContainer(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey),
                            child: Text(
                              'Black',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ContentSpace.sWidth,
                          CustomContainer(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey),
                            child: Text('Red', style: TextStyle(fontSize: 12)),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('4.8'),
                          ContentSpace.mWidth,
                          for (int i = 0; i < 5; i++)
                            Icon(Icons.star_rate_rounded, color: Colors.amber),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomContainer(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.grey),
                            child: Text(
                              '\$ 34.00',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ContentSpace.mWidth,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'upto 33% off',
                                style: TextStyle(color: Colors.red),
                              ),
                              Text(
                                '\$ 64.00',
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
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

      bottomNavigationBar: SafeArea(
        child: CustomContainer(
          color: Colors.blue,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('7,000.00'), Text('View Details')],
                  ),
                  Spacer(),
                  CustomContainer(
                    color: Colors.red,
                    child: Text('Proceed to Payment'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
