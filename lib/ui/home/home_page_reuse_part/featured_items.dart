import 'package:flutter/material.dart';

import '../../../reusable/custom_box_reuse.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(child: Text('All Featured')),

          CustomBoxReuse(
            child: Row(
              children: [
                Text('Sort'),

                Icon(Icons.sort_by_alpha_rounded, size: 15),
              ],
            ),
          ),

          CustomBoxReuse(
            child: Row(
              children: [
                Text('Filter'),

                Icon(Icons.filter_list_rounded, size: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
