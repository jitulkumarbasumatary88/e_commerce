import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:flutter/material.dart';

class ProductInfoPricing extends StatelessWidget {
  final Products? product;

  const ProductInfoPricing({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final price = product?.price ?? 0;

    final discount = product?.discountPercentage ?? 0;

    final originalPrice = discount > 0
        ? (price / (1 - (discount / 100))).toStringAsFixed(2)
        : price.toString();

    final rating = product?.rating?.toDouble() ?? 0.0;

    final categoryName =
        (product?.category != null && product!.category!.isNotEmpty)
        ? '${product!.category![0].toUpperCase()}${product!.category!.substring(1)}'
        : 'Featured • General';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product?.title ?? 'No Title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.heading,
        ),

        AppSpacing.h10,

        Text(
          product?.brand != null
              ? '${product?.brand} • $categoryName'
              : categoryName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.title.copyWith(fontWeight: FontWeight.w300),
        ),

        AppSpacing.h10,

        Row(
          children: [
            for (int star = 0; star < 5; star++)
              Icon(
                star < rating.floor()
                    ? Icons.star_rate_rounded
                    : (star < rating
                          ? Icons.star_half_rounded
                          : Icons.star_outline_rounded),
                color: star < rating ? AppColors.amber : AppColors.grey,
                size: 18,
              ),

            AppSpacing.w5,

            Text(
              '$rating (${product?.reviews?.length ?? 0} reviews)',
              style: AppTextStyles.caption.copyWith(color: AppColors.grey),
            ),
          ],
        ),

        AppSpacing.h10,

        Row(
          children: [
            Text(
              '\$$originalPrice',
              style: AppTextStyles.price.copyWith(
                color: AppColors.grey,
                decoration: TextDecoration.lineThrough,
                decorationColor: AppColors.grey,
                decorationThickness: 1.5,
              ),
            ),

            AppSpacing.w10,

            Text('\$$price', style: AppTextStyles.price),

            AppSpacing.w10,

            Text(
              '${discount.round()}% Off',
              style: AppTextStyles.price.copyWith(color: AppColors.pink),
            ),
          ],
        ),

        AppSpacing.h10,

        Text('Product Details', style: AppTextStyles.title),

        AppSpacing.h5,

        Text(
          product?.description ?? 'No description available.',
          style: AppTextStyles.body,
        ),
      ],
    );
  }
}
