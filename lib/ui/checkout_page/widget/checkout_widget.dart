import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class CheckoutWidget extends StatelessWidget {
  const CheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.blue,
      child: Column(
        spacing: 5,
        children: [
          CustomContainer(height: 80, width: 80, color: Colors.grey),

          Text("Women's Casual Wear"),

          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Variations :'),

              CustomButton(
                buttonText: 'Black',
                textColor: Colors.black,
                buttonIcon: Icons.square_rounded,
                buttonIconColor: Colors.black,
                border: Border.all(color: Colors.grey),
              ),

              CustomButton(
                buttonText: 'Red',
                textColor: Colors.black,
                buttonIcon: Icons.square_rounded,
                buttonIconColor: Colors.red,
                border: Border.all(color: Colors.grey),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('4.8'),

              ContentSpace.sWidth,

              for (int i = 0; i < 5; i++)
                Icon(
                  Icons.star_rate_rounded,
                  color: i < 4 ? Colors.amber : Colors.grey,
                ),
            ],
          ),

          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                buttonText: '34.00',
                textColor: Colors.black,
                buttonIcon: Icons.currency_rupee_rounded,
                buttonIconColor: Colors.black,
                border: Border.all(color: Colors.grey),
              ),

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
