import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_container.dart';

class ThreeDotOrScroll extends StatelessWidget {
  const ThreeDotOrScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++) ...[
          CustomContainer(
            height: 5,
            width: 25,
            color: i == 0 ? Colors.pinkAccent : Colors.grey,
          ),
          if (i < 2) ContentSpace.sWidth,
        ],
      ],
    );
  }
}
