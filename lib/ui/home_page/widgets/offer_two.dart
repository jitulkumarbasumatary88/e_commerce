import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_container.dart';

class OfferTwo extends StatelessWidget {
  const OfferTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        children: [
          CustomContainer(height: 100, width: 100, color: Colors.grey),

          ContentSpace.mWidth,

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Special Offers 😱'),

                ContentSpace.mHeight,

                Text(
                  maxLines: 2,
                  'We make sure you get the offer you need at best prices',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
