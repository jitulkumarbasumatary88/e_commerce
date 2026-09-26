import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_container.dart';

class Sponsored extends StatelessWidget {
  const Sponsored({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sponsored'),

          ContentSpace.mHeight,

          CustomContainer(
            color: Colors.grey,
            height: 200,
            width: double.infinity,
          ),

          ContentSpace.mHeight,

          Row(
            children: [
              Expanded(child: Text('up to 50% Off')),
              Icon(Icons.keyboard_arrow_right_rounded),
            ],
          ),
        ],
      ),
    );
  }
}
