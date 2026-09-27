import 'package:e_commerce_app/ui/checkout_page/widget/checkout_widget.dart';

import 'package:flutter/material.dart';

import '../reusable_widgets/custom_container.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
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
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.location_on_rounded),
                      Text('Delivery Address'),
                    ],
                  ),

                  Row(
                    spacing: 5,
                    children: [
                      Expanded(
                        child: CustomContainer(
                          color: Colors.blue,
                          child: Column(
                            spacing: 5,
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

                              Text('216 St Paul\'s Rd, London N1 2LL, UK'),
                              Text('Contact : +44-784232'),
                            ],
                          ),
                        ),
                      ),

                      CustomContainer(
                        color: Colors.blue,
                        child: Icon(Icons.add_circle_outline_rounded),
                      ),
                    ],
                  ),

                  Text('Shopping List'),

                  CheckoutWidget(),

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
