import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_button.dart';
import '../../reusable_widgets/custom_container.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        spacing: 10,
        children: [
          CustomContainer(
            color: Colors.grey,
            height: 250,
            width: double.infinity,
            child: Image.asset(
              'assets/home_page/new_arrivals.png',
              fit: BoxFit.cover,
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Arrivals'),

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
