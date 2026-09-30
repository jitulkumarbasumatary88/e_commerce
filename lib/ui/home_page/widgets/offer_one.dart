import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class OfferOne extends StatelessWidget {
  const OfferOne({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.only(left: 10),
      color: Colors.pinkAccent,
      child: Row(
        children: [
          Expanded(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '50 - 40% OFF',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),

                Text(
                  'Now in (product)\nAll colours',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),

                CustomButton(
                  buttonText: 'Shop Now',
                  buttonIcon: Icons.keyboard_arrow_right_rounded,
                  buttonBgColor: Colors.pinkAccent,
                  border: Border.all(color: Colors.white),
                ),
              ],
            ),
          ),

          CustomContainer(
            padding: EdgeInsets.zero,
            height: 180,
            width: 140,
            // color: Colors.grey,
            child: Image.asset(
              'assets/home_page/girl_image.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
