import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class OfferThree extends StatelessWidget {
  const OfferThree({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        spacing: 10,
        children: [
          CustomContainer(
            height: 180,
            width: 140,
            color: Colors.grey,
            child: Image.asset('assets/home_page/flat_and_heels.png'),
          ),

          Expanded(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Flat and Heels'),

                Text(maxLines: 2, 'Stand a chance to get rewarded'),

                Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                    buttonText: 'Visit Now',
                    buttonIcon: Icons.keyboard_arrow_right_rounded,
                    buttonBgColor: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
