import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomSortFilterBar extends StatelessWidget {
  final String title;

  const   CustomSortFilterBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Expanded(child: Text(title)),

        CustomButton(
          buttonText: 'Sort',
          textColor: Colors.black,
          buttonIcon: Icons.swap_vert_rounded,
          buttonIconColor: Colors.black,
        ),

        CustomButton(
          buttonText: 'Filter',
          textColor: Colors.black,
          buttonIcon: Icons.filter_alt_outlined,
          buttonIconColor: Colors.black,
        ),
      ],
    );
  }
}
