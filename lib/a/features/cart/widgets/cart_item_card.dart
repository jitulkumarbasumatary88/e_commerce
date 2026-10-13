import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/shared/app_button.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  final Products? product;

  const CartItemCard({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final categoryName =
        (product?.category != null && product!.category!.isNotEmpty)
        ? '${product!.category![0].toUpperCase()}${product!.category!.substring(1)}'
        : 'Featured • General';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppContainer(
          height: 150,
          width: 250,
          color: AppColors.grey100,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],

          child: CachedNetworkImage(
            width: double.infinity,
            imageUrl: product?.thumbnail ?? '',
            fit: BoxFit.contain,

            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.pink,
              ),
            ),

            errorWidget: (context, url, error) => const Center(
              child: Icon(Icons.broken_image_rounded, color: AppColors.grey),
            ),
          ),
        ),

        AppSpacing.h15,

        if (categoryName.isNotEmpty) ...[
          Text(
            categoryName,
            textAlign: TextAlign.center,
            style: AppTextStyles.title,
          ),

          AppSpacing.h5,
        ],

        Text(
          product?.title ?? 'No Title',
          textAlign: TextAlign.center,
          style: AppTextStyles.heading,
        ),

        AppSpacing.h15,

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (product?.category?.contains('shoes') == true ||
                product?.category?.contains('shirt') == true ||
                product?.category?.contains('dress') == true ||
                product?.category?.contains('tops') == true ||
                product?.category?.contains('women-shoes') == true ||
                product?.category?.contains('mens-shoes') == true) ...[
              AppButton(
                buttonText: 'Size 42',
                buttonIcon: Icons.arrow_drop_down_rounded,
                buttonBgColor: AppColors.grey100,
                onTap: () {},
              ),
              AppSpacing.w10,
            ],

            AppButton(
              buttonText: 'Qty 1',
              buttonIcon: Icons.arrow_drop_down_rounded,
              buttonBgColor: AppColors.grey100,
              onTap: () {},
            ),
          ],
        ),

        AppSpacing.h15,

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Delivery by ', style: AppTextStyles.body),

            Text(
              '10 May 2026',
              style: AppTextStyles.title.copyWith(letterSpacing: 0),
            ),
          ],
        ),
      ],
    );
  }
}
