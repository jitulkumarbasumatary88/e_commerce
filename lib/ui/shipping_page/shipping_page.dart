// import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class ShippingPage extends StatelessWidget {
  const ShippingPage({super.key});

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
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Order'), Text('₹ 7,000')],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Shipping'), Text('₹ 30')],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Total'), Text('₹ 7,030')],
                  ),

                  Divider(color: Colors.grey),

                  Text('Payment'),

                  for (int i = 0; i < 4; i++)
                    CustomContainer(
                      border: Border.all(color: Colors.pinkAccent),
                      borderRadius: BorderRadius.circular(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('VISA'), Text('*********2109')],
                      ),
                    ),

                  CustomContainer(
                    width: double.infinity,
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(6),
                    child: Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
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
