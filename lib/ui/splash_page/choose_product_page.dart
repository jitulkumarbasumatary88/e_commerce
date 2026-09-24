import 'package:e_commerce_app/ui/splash_page/widget/onboarding.dart';
import 'package:flutter/material.dart';

class ChooseProductPage extends StatelessWidget {
  const ChooseProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Onboarding(
      image: Center(child: Text('Image 1 Placeholder')),
      title: 'Choose Products',
      description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      pageIndex: 0,
    );
  }
}
