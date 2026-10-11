import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:flutter/material.dart';

/// Size selector chips (e.g., 6UK, 7UK, 8UK) for apparel/footwear
class ProductSizeSelector extends StatefulWidget {
  const ProductSizeSelector({super.key});

  @override
  State<ProductSizeSelector> createState() => _ProductSizeSelectorState();
}

class _ProductSizeSelectorState extends State<ProductSizeSelector> {
  // Currently selected chip index (defaults to index 1 -> 7 UK)
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    // Clamping text scale keeps size chip badges neat and compact
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Size title display with active UK size
          Text(
            'Size: ${6 + selectedIndex}UK',
            style: AppTextStyles.title.copyWith(fontSize: 14),
          ),

          AppSpacing.h10,

          // Row of selectable size badges
          Wrap(
            spacing: 8,
            runSpacing: 8,
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: i == selectedIndex
                          ? AppColors.pink
                          : AppColors.white,
                      border: Border.all(
                        color: AppColors.pink,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      '${6 + i} UK',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
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
