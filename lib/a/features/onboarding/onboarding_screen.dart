import 'package:flutter/material.dart';
import 'package:e_commerce_app/a/core/app_routes.dart';

import '../../core/app_colors.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/custom_container.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _slides = [
    {
      'image': 'assets/onboarding/choose_products.png',
      'title': 'Choose Products',
      'desc': 'Explore thousands of top quality products tailored to your unique style.',
    },
    {
      'image': 'assets/onboarding/make_payment.png',
      'title': 'Make Payment',
      'desc': 'Easy, fast and 100% secure payment methods for a hassle free checkout.',
    },
    {
      'image': 'assets/onboarding/get_your_order.png',
      'title': 'Get Your Order',
      'desc': 'Lightning fast delivery right at your doorstep with real time tracking.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // TOP
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${_currentIndex + 1}/3', style: AppTextStyles.title),

                  InkWell(
                    onTap: () {
                      AppRoutes.toGetStarted(context);
                    },
                    child: Text(
                      'Skip',
                      style: AppTextStyles.title.copyWith(
                        color: AppColors.pink,
                      ),
                    ),
                  ),
                ],
              ),

              // CENTER
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _slides.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final slide = _slides[index];
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            height: 260,
                            width: double.infinity,
                            slide['image']!,
                            fit: BoxFit.contain,
                          ),

                          AppSpacing.h20,

                          Text(
                            slide['title']!,
                            style: AppTextStyles.appBarTitle,
                          ),

                          AppSpacing.h10,

                          Text(
                            slide['desc']!,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.body,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // BOTTOM
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _currentIndex == 0
                      ? AppSpacing.w30
                      : InkWell(
                          onTap: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: const Text('Prev', style: AppTextStyles.title),
                        ),

                  Row(
                    children: List.generate(3, (index) {
                      final isActive = _currentIndex == index;
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: CustomContainer(
                          height: 6,
                          width: isActive ? 25 : 10,
                          color: isActive
                              ? AppColors.black
                              : AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      );
                    }),
                  ),

                  InkWell(
                    onTap: () {
                      if (_currentIndex < 2) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        AppRoutes.toGetStarted(context);
                      }
                    },

                    child: Text(
                      _currentIndex == 2 ? 'Get Started' : 'Next',
                      style: AppTextStyles.title.copyWith(
                        color: AppColors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
