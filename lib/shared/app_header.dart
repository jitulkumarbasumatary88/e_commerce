import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/app_routes.dart';
import '../core/app_text_styles.dart';

class AppHeader extends StatelessWidget {
  final bool isBackButton;

  const AppHeader({super.key, this.isBackButton = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            if (isBackButton) {
              Navigator.pop(context);
            }
          },

          icon: Icon(
            isBackButton
                ? Icons.arrow_back_ios_new_rounded
                : Icons.menu_rounded,
          ),
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
