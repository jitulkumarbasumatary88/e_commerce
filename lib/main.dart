import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'a/core/app_theme.dart';
import 'a/features/home/home_screen.dart';
import 'a/features/onboarding/splash_screen.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      // home: const SplashScreen(),
      home: const HomeScreen(),
    );
  }
}

// git add . ; git commit -m "initial commit" ; git push
