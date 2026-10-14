import 'package:flutter/material.dart';

import '../../core/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  Future<void> _startTimer() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    AppRoutes.toOnboarding(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/splash/stylish.png')),
    );
  }
}
