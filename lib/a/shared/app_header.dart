import 'package:e_commerce_app/a/core/app_routes.dart';
import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/app_text_styles.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu_rounded, color: AppColors.black),
        ),

        Text('Stylish', style: AppTextStyles.appBarTitle),

        InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            AppRoutes.toProfileScreen(context);
          },
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
