import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(color: AppColors.black),
    ),
  );
}
