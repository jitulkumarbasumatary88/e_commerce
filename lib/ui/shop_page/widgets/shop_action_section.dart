import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class ShopActionSection extends StatelessWidget {
  const ShopActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final tags = [
      {'icon': Icons.location_on_outlined, 'label': 'Nearest Store'},
      {'icon': Icons.lock_outline_rounded, 'label': 'VIP'},
      {'icon': Icons.assignment_return_outlined, 'label': 'Return policy'},
    ];

    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [
            for (var tag in tags)
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(6),
                child: CustomContainer(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      // spreadRadius: 1,
                      offset: Offset(0, 3),
                    ),
                  ],
                  child: Row(
                    spacing: 3,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        tag['icon'] as IconData,
                        color: Colors.grey,
                        size: 14,
                      ),

                      Text(
                        tag['label'] as String,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),

        Row(
          spacing: 10,
          children: [
            Expanded(
              child: CustomButton(
                buttonText: 'Go to Cart',
                buttonIcon: Icons.shopping_cart_outlined,
                buttonBgColor: Colors.blue,
                onTap: () {},
              ),
            ),

            Expanded(
              child: CustomButton(
                buttonText: 'Buy Now',
                buttonIcon: Icons.touch_app_outlined,
                buttonBgColor: Colors.green,
                onTap: () {},
              ),
            ),
          ],
        ),

        CustomContainer(
          width: double.infinity,
          color: Colors.pinkAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2,
              // spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery in',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: 1,
                ),
              ),

              Text(
                '1 within hour',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),

        Row(
          spacing: 10,
          children: [
            Expanded(
              child: CustomButton(
                buttonText: 'Similar',
                textColor: Colors.black,
                buttonIcon: Icons.remove_red_eye_outlined,
                buttonIconColor: Colors.black,
                border: Border.all(color: Colors.grey),
                onTap: () {},
              ),
            ),

            Expanded(
              child: CustomButton(
                buttonText: 'Add to Compare',
                textColor: Colors.black,
                buttonIcon: Icons.compare_arrows_rounded,
                buttonIconColor: Colors.black,
                border: Border.all(color: Colors.grey),
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
