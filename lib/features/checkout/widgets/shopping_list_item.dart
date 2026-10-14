import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';
import '../../../data/products_model.dart';
import '../../../shared/app_container.dart';

class ShoppingListItem extends StatelessWidget {
  final Products? product;

  const ShoppingListItem({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final title = product?.title ?? 'Selected Product';

    final price = product?.price ?? 0;

    final originalPrice = (price * 1.5).toStringAsFixed(2);

    return AppContainer(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: AppColors.grey300),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 3)),
      ],

      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppContainer(
                height: 130,
                width: 110,
                color: AppColors.grey200,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
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
                    child: Icon(
                      Icons.broken_image_rounded,
                      color: AppColors.pink,
                    ),
                  ),
                ),
              ),

              AppSpacing.w10,

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.title,
                    ),

                    AppSpacing.h10,

                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        const Text('Variations :', style: AppTextStyles.body),

                        _buildVariationTag('Black'),

                        _buildVariationTag('Red'),
                      ],
                    ),

                    AppSpacing.h10,

                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Builder(
                        builder: (context) {
                          final rating =
                              double.tryParse('${product?.rating}') ?? 0.0;

                          return Row(
                            children: [
                              Text(
                                '${product?.rating ?? 0}',
                                style: AppTextStyles.caption.copyWith(
                                  color: AppColors.grey,
                                ),
                              ),

                              AppSpacing.w5,

                              for (int star = 0; star < 5; star++)
                                Icon(
                                  star < rating.floor()
                                      ? Icons.star_rate_rounded
                                      : (star < rating
                                            ? Icons.star_half_rounded
                                            : Icons.star_outline_rounded),
                                  color: star < rating
                                      ? AppColors.amber
                                      : AppColors.grey,
                                  size: 18,
                                ),
                            ],
                          );
                        },
                      ),
                    ),

                    AppSpacing.h10,

                    Row(
                      children: [
                        AppContainer(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          color: AppColors.grey100,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: AppColors.grey300),

                          child: Text('\$$price', style: AppTextStyles.body),
                        ),

                        AppSpacing.w10,

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'upto 33% off',
                              style: AppTextStyles.caption.copyWith(
                                color: AppColors.pink,
                              ),
                            ),

                            Text(
                              '\$ $originalPrice',
                              style: AppTextStyles.caption.copyWith(
                                color: AppColors.grey,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: AppColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          AppSpacing.h15,
          const Divider(color: AppColors.grey300),
          AppSpacing.h15,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Total Order (1) :', style: AppTextStyles.title),

              Text('\$$price', style: AppTextStyles.price),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVariationTag(String label) {
    return AppContainer(
      color: AppColors.grey100,
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      borderRadius: BorderRadius.circular(6),
      border: Border.all(color: AppColors.grey300),
      child: Text(label, style: AppTextStyles.body),
    );
  }
}
