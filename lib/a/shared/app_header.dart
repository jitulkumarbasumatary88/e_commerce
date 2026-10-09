import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/app_text_styles.dart';

class AppHeader extends StatelessWidget {
  final VoidCallback? onMenuPressed;
  final VoidCallback? onProfilePressed;

  const AppHeader({super.key, this.onMenuPressed, this.onProfilePressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onMenuPressed,
          icon: const Icon(Icons.menu_rounded, color: AppColors.black),
        ),

        Text('Stylish', style: AppTextStyles.appBarTitle),

        InkWell(
          customBorder: const CircleBorder(),
          onTap: onProfilePressed,
          child: const CircleAvatar(
            radius: 22,
            backgroundColor: AppColors.pink,
            child: Icon(Icons.person_rounded, color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
