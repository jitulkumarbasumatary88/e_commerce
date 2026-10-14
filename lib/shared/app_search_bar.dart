import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class AppSearchBar extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final TextEditingController? controller;

  const AppSearchBar({super.key, this.onChanged, this.onTap, this.controller});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.black,
        ),
      ),

      child: SearchBar(
        controller: controller,
        onChanged: onChanged,
        onTap: onTap,
        hintText: 'Search any Product...',

        hintStyle: const WidgetStatePropertyAll(
          TextStyle(color: AppColors.grey),
        ),

        backgroundColor: const WidgetStatePropertyAll(AppColors.grey100),

        elevation: const WidgetStatePropertyAll(3),

        shadowColor: const WidgetStatePropertyAll(Colors.black38),

        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),

        leading: const Icon(Icons.search_rounded, color: AppColors.grey),

        trailing: const [Icon(Icons.mic_rounded, color: AppColors.grey)],
      ),
    );
  }
}
