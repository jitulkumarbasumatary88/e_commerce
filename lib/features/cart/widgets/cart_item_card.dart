import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';
import '../../../data/products_model.dart';
import '../../../shared/app_button.dart';
import '../../../shared/app_container.dart';

class CartItemCard extends StatelessWidget {
  final Products? product;
  final int quantity;
  final VoidCallback? onDeleteTap;
  final VoidCallback? onIncrementTap;
  final VoidCallback? onDecrementTap;

  const CartItemCard({
    super.key,
    this.product,
    this.quantity = 1,
    this.onDeleteTap,
    this.onIncrementTap,
    this.onDecrementTap,
  });

  @override
  Widget build(BuildContext context) {
    final categoryName =
        (product?.category != null && product!.category!.isNotEmpty)
        ? '${product!.category![0].toUpperCase()}${product!.category!.substring(1)}'
        : 'Featured • General';

    return AppContainer(
      border: Border.all(color: AppColors.grey300),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 2, offset: Offset(0, 3)),
      ],

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppContainer(
            height: 130,
            width: 110,
            color: AppColors.grey200,
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
                child: Icon(Icons.broken_image_rounded, color: AppColors.pink),
              ),
            ),
          ),

          AppSpacing.w10,

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(categoryName, style: AppTextStyles.title),

                AppSpacing.h5,

                Text(product?.title ?? 'No Title', style: AppTextStyles.body),

                AppSpacing.h10,

                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
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
                    ],

                    AppButton(
                      buttonIcon: Icons.remove_rounded,
                      buttonBgColor: AppColors.grey100,
                      onTap: onDecrementTap,
                    ),

                    AppContainer(
                      padding: EdgeInsets.all(5),
                      child: Text('$quantity'),
                    ),

                    AppButton(
                      buttonIcon: Icons.add_rounded,
                      buttonBgColor: AppColors.grey100,
                      onTap: onIncrementTap,
                    ),

                    AppButton(
                      buttonIcon: Icons.delete_outline_rounded,
                      buttonBgColor: AppColors.grey100,
                      onTap: onDeleteTap,
                    ),
                  ],
                ),

                AppSpacing.h10,

                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text('Delivery by ', style: AppTextStyles.body),

                    Text(
                      '10 May 2026',
                      style: AppTextStyles.title.copyWith(letterSpacing: 0.5),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
