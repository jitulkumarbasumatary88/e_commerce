import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';
import '../../../shared/app_container.dart';

class DeliveryAddressCard extends StatelessWidget {
  final VoidCallback? onEditTap;
  final VoidCallback? onAddTap;

  const DeliveryAddressCard({super.key, this.onEditTap, this.onAddTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.location_on_outlined, size: 20),

            AppSpacing.w5,

            const Text('Delivery Address', style: AppTextStyles.title),
          ],
        ),

        AppSpacing.h15,

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AppContainer(
                border: Border.all(color: AppColors.grey300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Address :', style: AppTextStyles.body),

                        InkWell(
                          onTap: onEditTap,
                          child: const Icon(Icons.edit_note_rounded, size: 25),
                        ),
                      ],
                    ),

                    AppSpacing.h5,

                    const Text(
                      '216 St Paul\'s Rd, London N1 2LL, UK',
                      style: AppTextStyles.body,
                    ),

                    AppSpacing.h5,

                    Text(
                      'Contact : +44-784232',
                      style: AppTextStyles.body.copyWith(),
                    ),
                  ],
                ),
              ),
            ),

            AppSpacing.w10,

            InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: onAddTap,

              child: AppContainer(
                border: Border.all(color: AppColors.grey300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],

                child: const Center(
                  child: Icon(Icons.add_circle_outline_rounded, size: 30),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
