import 'package:e_commerce_app/ui/splash_page/widget/onboarding_page.dart';
import 'package:flutter/material.dart';

class GetYourOrderPage extends StatelessWidget {
  const GetYourOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      image: Center(child: Text('Image 3 Placeholder')),
      title: 'Get Your Order',
      description: 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
      pageIndex: 2,
    );
  }
}
