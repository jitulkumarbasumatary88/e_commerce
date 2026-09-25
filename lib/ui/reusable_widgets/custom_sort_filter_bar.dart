import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:flutter/material.dart';

import 'custom_container.dart';

class CustomSortFilterBar extends StatelessWidget {
  final String title;

  const CustomSortFilterBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(title)),

        CustomContainer(
          child: const Row(
            children: [Text('Sort'), Icon(Icons.swap_vert_rounded)],
          ),
        ),

        ContentSpace.sWidth,

        CustomContainer(
          child: const Row(
            children: [Text('Filter'), Icon(Icons.filter_alt_outlined)],
          ),
        ),
      ],
    );
  }
}
