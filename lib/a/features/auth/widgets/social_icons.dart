import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../shared/custom_container.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 🔴 Google
        CustomContainer(
          height: 50,
          width: 50,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: AppColors.pink),
          child: const Center(
            child: Text(
              'G',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColors.pink,
              ),
            ),
          ),
        ),

        AppSpacing.w20,

        // ⚫ Apple
        CustomContainer(
          height: 50,
          width: 50,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: AppColors.black),
          child: const Center(
            child: Icon(Icons.apple, size: 24, color: AppColors.black),
          ),
        ),

        AppSpacing.w20,

        // 🔵 Facebook
        CustomContainer(
          height: 50,
          width: 50,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: AppColors.blue),
          child: const Center(
            child: Text(
              'f',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
