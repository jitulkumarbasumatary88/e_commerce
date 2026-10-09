import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:flutter/material.dart';

import '../core/app_text_styles.dart';
import 'app_button.dart';

class FilterSortBar extends StatelessWidget {
  final String title;
  final VoidCallback? onSortTap;
  final VoidCallback? onFilterTap;

  const FilterSortBar({
    super.key,
    required this.title,
    this.onSortTap,
    this.onFilterTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.heading,
          ),
        ),

        AppButton(
          buttonText: 'Sort',
          buttonIcon: Icons.swap_vert_rounded,
          onTap: onSortTap,
        ),

        AppSpacing.w10,

        AppButton(
          buttonText: 'Filter',
          buttonIcon: Icons.filter_alt_outlined,
          onTap: onFilterTap,
        ),
      ],
    );
  }
}
