import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class OfferTwo extends StatelessWidget {
  const OfferTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Row(
        spacing: 10,
        children: [
          CustomContainer(
            height: 100,
            width: 100,
            color: Colors.grey,
            child: Image.asset('assets/home_page/special_offer.png'),
          ),

          Expanded(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Special Offers 😱'),

                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
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
