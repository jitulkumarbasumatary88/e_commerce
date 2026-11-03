import 'package:flutter/material.dart';

import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';
import '../../../shared/app_text_field.dart';

class BusinessAddressSection extends StatelessWidget {
  const BusinessAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [

        Text('Business Address Details', style: AppTextStyles.heading),

        AppSpacing.h20,

        Text('Pin Code', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'Pin Code'),

        AppSpacing.h20,

        Text('Address', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'Address'),

        AppSpacing.h20,

        Text('City', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'City'),

        AppSpacing.h20,

        Text('State', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'State'),

        AppSpacing.h20,

        Text('Country', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(hintText: 'Country'),
      ],
    );
  }
}
