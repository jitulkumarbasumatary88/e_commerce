import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class CapsuleDotScroll extends StatelessWidget {
  const CapsuleDotScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          CustomContainer(
            height: 5,
            width: 25,
            color: i == 0 ? Colors.pinkAccent : Colors.grey,
          ),
      ],
    );
  }
}
