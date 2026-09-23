import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class ShippingPage extends StatelessWidget {
  const ShippingPage({super.key});

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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Order'), Text('₹ 7,000')],
                  ),

                  ContentSpace.lHeight,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Shipping'), Text('₹ 30')],
                  ),
                  ContentSpace.lHeight,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Total'), Text('₹ 7,030')],
                  ),
                  ContentSpace.lHeight,

                  Divider(color: Colors.grey),

                  ContentSpace.lHeight,

                  Text('Payment'),

                  ContentSpace.lHeight,

                  for (int i = 0; i < 4; i++) ...[
                    CustomContainer(
                      border: Border.all(color: Colors.redAccent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('VISA'), Text('*********2109')],
                      ),
                    ),
                    if (i < 3) ContentSpace.lHeight,
                  ],

                  ContentSpace.lHeight,

                  CustomContainer(
                    width: double.infinity,
                    color: Colors.redAccent,
                    child: Center(child: Text('Continue')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
