import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class OfferOne extends StatelessWidget {
  const OfferOne({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.pinkAccent,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('50 - 40% OFF'),

                ContentSpace.mHeight,

                Text('Now in (product)'),
                Text('All colours'),

                ContentSpace.mHeight,

                CustomButton(
                  buttonText: 'Shop Now',
                  buttonIcon: Icons.keyboard_arrow_right_rounded,
                  buttonBgColor: Colors.pinkAccent,
                  border: Border.all(color: Colors.white),
                ),
              ],
            ),
          ),

          CustomContainer(height: 180, width: 140, color: Colors.grey),
        ],
      ),
    );
  }
}
