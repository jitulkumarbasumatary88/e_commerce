import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.blue,
      child: Column(
        children: [
          Column(
            children: [
              CustomContainer(height: 80, width: 80, color: Colors.grey),

              Text("Women's Casual Wear"),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Variations :'),
                  CustomContainer(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.grey),
                    child: Text('Black', style: TextStyle(fontSize: 12)),
                  ),
                  ContentSpace.sWidth,
                  CustomContainer(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.grey),
                    child: Text('\$ 34.00', style: TextStyle(fontSize: 12)),
                  ),
                  ContentSpace.mWidth,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('upto 33% off', style: TextStyle(color: Colors.red)),
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

          Divider(color: Colors.grey),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Text('Total Order (1) :'), Text('\$ 34.00')],
          ),
        ],
      ),
    );
  }
}
