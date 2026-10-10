import 'package:flutter/material.dart';

import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';

import '../../../shared/app_container.dart';

class SponsoredCard extends StatelessWidget {
  final VoidCallback? onTap;

  const SponsoredCard({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: AppContainer(
          padding: EdgeInsets.zero,
          color: AppColors.grey100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text('Sponsored', style: AppTextStyles.title),
              ),

              Image.asset(
                width: double.infinity,
                'assets/home_page/sponsored.png',
                fit: BoxFit.contain,
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text('up to 50% Off', style: AppTextStyles.title),
                    ),

                    const Icon(Icons.arrow_forward_ios_rounded, size: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
