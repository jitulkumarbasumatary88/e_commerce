import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class Sponsored extends StatelessWidget {
  const Sponsored({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.grey,
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sponsored', style: TextStyle(fontWeight: FontWeight.bold)),

          Image.asset('assets/home_page/sponsored.png', fit: BoxFit.fill),

          // CustomContainer(
          //   color: Colors.grey,
          //   height: 300,
          //   width: double.infinity,
          //   child: Image.asset(
          //     'assets/home_page/sponsored.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
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
