import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_button.dart';
import '../../reusable_widgets/custom_container.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          CustomContainer(
            color: Colors.grey,
            height: 200,
            width: double.infinity,
          ),

          ContentSpace.mHeight,

          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Arrivals'),

                    ContentSpace.sHeight,

                    Text("Summer' 25 Collections"),
                  ],
                ),
              ),

              CustomButton(
                buttonText: 'View All',
                buttonIcon: Icons.keyboard_arrow_right_rounded,
                buttonBgColor: Colors.pinkAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
