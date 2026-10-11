import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:flutter/material.dart';

/// Widget displaying product title, brand, ratings, pricing with discount, and description
class ProductInfoPricing extends StatelessWidget {
  final Products? product;

  const ProductInfoPricing({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    // Current discounted price
    final price = product?.price ?? 0;
    // Discount percentage
    final discount = product?.discountPercentage ?? 0;
    // Calculate original non-discounted price for strikethrough display
    final originalPrice = discount > 0
        ? (price / (1 - (discount / 100))).toStringAsFixed(2)
        : price.toString();
    // Star rating
    final rating = product?.rating?.toDouble() ?? 0.0;
    // Capitalized category title
    final categoryName =
        (product?.category != null && product!.category!.isNotEmpty)
            ? '${product!.category![0].toUpperCase()}${product!.category!.substring(1)}'
            : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Product Main Title
        Text(
          product?.title ?? 'No Title',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.heading.copyWith(fontSize: 20),
        ),

        AppSpacing.h5,

        // Brand & Category Subtitle
        Text(
          product?.brand != null
              ? '${product?.brand} • $categoryName'
              : categoryName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.body.copyWith(
            color: AppColors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),

        AppSpacing.h10,

        // 5-Star Rating Row with total reviews count
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
                size: 20,
              ),

            AppSpacing.w10,

            Text(
              '$rating (${product?.reviews?.length ?? 0} reviews)',
              style: AppTextStyles.caption.copyWith(
                color: AppColors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        AppSpacing.h10,

        // Pricing Row: Original Strikethrough, Current Price, and Discount Badge
        Row(
          children: [
            // Original Strikethrough Price
            Text(
              '\$$originalPrice',
              style: TextStyle(
                color: AppColors.grey,
                decoration: TextDecoration.lineThrough,
                decorationColor: AppColors.grey,
                fontSize: 16,
              ),
            ),

            AppSpacing.w10,

            // Discounted Current Price
            Text(
              '\$$price',
              style: AppTextStyles.price.copyWith(fontSize: 18),
            ),

            AppSpacing.w10,

            // Discount Percentage Tag
            Text(
              '${discount.round()}% Off',
              style: TextStyle(
                color: AppColors.pink,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        AppSpacing.h15,

        // 'Product Details' Heading
        Text(
          'Product Details',
          style: AppTextStyles.title,
        ),

        AppSpacing.h5,

        // Full Product Description
        Text(
          product?.description ?? 'No description available.',
          style: AppTextStyles.body.copyWith(
            height: 1.5,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
