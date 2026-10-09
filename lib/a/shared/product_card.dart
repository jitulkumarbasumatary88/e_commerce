import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../core/app_spacing.dart';
import '../data/products_model.dart';
import 'app_container.dart';

class ProductCard extends StatelessWidget {
  final Products product;
  final VoidCallback? onTap;

  const ProductCard({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,

      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: AppContainer(
          padding: EdgeInsets.zero,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],

          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image Container
              AppContainer(
                color: AppColors.grey200,
                height: 150,
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  width: double.infinity,
                  imageUrl: product.thumbnail ?? '',
                  fit: BoxFit.contain,

                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.white,
                    ),
                  ),

                  errorWidget: (context, url, error) => const Center(
                    child: Icon(
                      Icons.broken_image_rounded,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),

              // Product Details (Title, Description, Price, Rating)
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      product.title ?? 'No Title',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.title,
                    ),

                    AppSpacing.h5,

                    // Description
                    Text(
                      product.description ?? 'No description',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.body,
                    ),

                    AppSpacing.h5,

                    // Price
                    Text('\$${product.price ?? 0}', style: AppTextStyles.price),

                    AppSpacing.h5,

                    // Rating Stars Row
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Builder(
                        builder: (context) {
                          final rating =
                              double.tryParse('${product.rating}') ?? 0.0;

                          return Row(
                            children: [
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

                              AppSpacing.w5,

                              Text(
                                '${product.rating ?? 0}',
                                style: AppTextStyles.caption.copyWith(
                                  color: AppColors.grey,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
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
