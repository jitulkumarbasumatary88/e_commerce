import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';

class CategoryData {
  final String title;
  final IconData icon;

  const CategoryData({required this.title, required this.icon});
}

class CategorySelector extends StatelessWidget {
  final void Function(String category)? onCategorySelected;

  const CategorySelector({super.key, this.onCategorySelected});

  static const List<CategoryData> _categories = [
    CategoryData(title: 'Beauty', icon: Icons.face_retouching_natural_rounded),
    CategoryData(title: 'Fashion', icon: Icons.checkroom_rounded),
    CategoryData(title: 'Kids', icon: Icons.child_care_rounded),
    CategoryData(title: 'Mens', icon: Icons.man_rounded),
    CategoryData(title: 'Women', icon: Icons.woman_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          clipBehavior: Clip.none,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: _categories.length,
          separatorBuilder: (context, index) => AppSpacing.w20,
          itemBuilder: (context, index) {
            final category = _categories[index];

            return InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () => onCategorySelected?.call(category.title),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: AppColors.grey100,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Icon(category.icon, size: 30),
                  ),

                  AppSpacing.h5,

                  Text(category.title, style: AppTextStyles.caption),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
