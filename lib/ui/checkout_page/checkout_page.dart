import 'package:e_commerce_app/ui/checkout_page/widget/checkout_widget.dart';
import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/custom_container.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            leading: Icon(Icons.arrow_back_ios_new_rounded),
            title: Text('Checkout'),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_rounded),
                      ContentSpace.sWidth,
                      Text('Delivery Address'),
                    ],
                  ),

                  ContentSpace.mHeight,

                  Row(
                    children: [
                      Expanded(
                        child: CustomContainer(
                          color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Address :'),
                                  Icon(Icons.edit_note_rounded),
                                ],
                              ),
                              ContentSpace.sHeight,
                              Text('216 St Paul\'s Rd, London N1 2LL, UK'),
                              Text('Contact : +44-784232'),
                            ],
                          ),
                        ),
                      ),

                      ContentSpace.sWidth,

                      CustomContainer(
                        color: Colors.blue,
                        child: Icon(Icons.add_circle_outline_rounded),
                      ),
                    ],
                  ),

                  ContentSpace.mHeight,

                  Text('Shopping List'),

                  ContentSpace.mHeight,

                  CheckoutWidget(),

                  ContentSpace.mHeight,

                  CheckoutWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
