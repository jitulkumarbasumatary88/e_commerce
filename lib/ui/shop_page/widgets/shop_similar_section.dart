import 'package:e_commerce_app/ui/reusable_widgets/custom_sort_filter_bar.dart';
import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_horizontal_list.dart';

class ShopSimilarSection extends StatelessWidget {
  const ShopSimilarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Similar To'),

        CustomSortFilterBar(title: '282+ Items'),

        // CustomHorizontalList(),
      ],
    );
  }
}
