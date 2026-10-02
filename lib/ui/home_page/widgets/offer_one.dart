import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';

class OfferOne extends StatelessWidget {
  const OfferOne({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: Colors.grey,
        height: 200,
        width: double.infinity,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/home_page/chokri_kaa_image.png',
                fit: BoxFit.cover,
                alignment: Alignment.centerRight,
              ),
            ),

            Positioned(
              left: 20,
              top: 0,
              bottom: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '50-40% OFF',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),

                  ContentSpace.mHeight,

                  const Text(
                    'Now in (product)\nAll colours',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),

                  ContentSpace.mHeight,

                  CustomButton(
                    buttonText: 'Shop Now',
                    buttonIcon: Icons.arrow_forward_rounded,
                    buttonBgColor: Colors.transparent,
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
