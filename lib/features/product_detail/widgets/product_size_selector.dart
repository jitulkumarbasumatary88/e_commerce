import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';

class ProductSizeSelector extends StatefulWidget {
  const ProductSizeSelector({super.key});

  @override
  State<ProductSizeSelector> createState() => _ProductSizeSelectorState();
}

class _ProductSizeSelectorState extends State<ProductSizeSelector> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Size: ${6 + selectedIndex}UK', style: AppTextStyles.body),

          AppSpacing.h10,

          Wrap(
            spacing: 5,
            runSpacing: 5,
            children: [
              for (int i = 0; i < 5; i++)
                InkWell(
                  borderRadius: BorderRadius.circular(6),
                  onTap: () {
                    setState(() {
                      selectedIndex = i;
                    });
                  },

                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),

                    decoration: BoxDecoration(
                      color: i == selectedIndex
                          ? AppColors.pink
                          : AppColors.white,
                      border: Border.all(color: AppColors.pink, width: 1.5),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),

                    child: Text(
                      '${6 + i} UK',
                      style: AppTextStyles.body.copyWith(
                        color: i == selectedIndex
                            ? AppColors.white
                            : AppColors.pink,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
