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
              CustomContainer(
                padding: EdgeInsets.all(4),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey),
                child: Row(
                  spacing: 5,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(tag['icon'] as IconData, color: Colors.grey, size: 14),

                    Text(
                      tag['label'] as String,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
          ],
        ),

        Row(
          spacing: 5,
          children: [
            CustomButton(
              buttonText: 'Go to cart',
              buttonIcon: Icons.shopping_cart_outlined,
              buttonBgColor: Colors.blue,
            ),

            CustomButton(
              buttonText: 'Buy Now',
              buttonIcon: Icons.touch_app_outlined,
              buttonBgColor: Colors.green,
            ),
          ],
        ),

        CustomContainer(
          width: double.infinity,
          color: Colors.pinkAccent,
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Delivery in'), Text('1 within Hour')],
          ),
        ),

        Row(
          spacing: 5,
          children: [
            Expanded(
              child: CustomButton(
                buttonText: 'Similar',
                textColor: Colors.black,
                buttonIcon: Icons.remove_red_eye_outlined,
                buttonIconColor: Colors.black,
                border: Border.all(color: Colors.grey),
              ),
            ),

            Expanded(
              child: CustomButton(
                buttonText: 'Add to Compare',
                textColor: Colors.black,
                buttonIcon: Icons.compare_arrows_rounded,
                buttonIconColor: Colors.black,
                border: Border.all(color: Colors.grey),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
