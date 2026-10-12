import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/shared/app_text_field.dart';
import 'package:flutter/material.dart';

class BusinessAddressSection extends StatelessWidget {
  const BusinessAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        // Section Title
        Text('Business Address Details', style: AppTextStyles.heading),

        AppSpacing.h20,

        // Pin Code
        Text('Pin Code', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'Pin Code'),

        AppSpacing.h20,

        // Address
        Text('Address', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'Address'),

        AppSpacing.h20,

        // City
        Text('City', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'City'),

        AppSpacing.h20,

        // State
        Text('State', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'State'),

        AppSpacing.h20,

        // Country
        Text('Country', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'Country'),
      ],
    );
  }
}
