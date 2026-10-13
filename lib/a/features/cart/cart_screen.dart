/*import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/shared/app_button.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final Products? product;

  const CartScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final price = product?.price ?? 0;
    final categoryName =
        (product?.category != null && product!.category!.isNotEmpty)
        ? '${product!.category![0].toUpperCase()}${product!.category!.substring(1)}'
        : 'Featured • General';

    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,

      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              PinnedHeaderSliver(
                child: AppContainer(
                  borderRadius: BorderRadius.zero,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      ),

                      const Text(
                        'Shopping Bag',
                        style: AppTextStyles.appBarTitle,
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.heart),
                      ),
                    ],
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
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

                              errorWidget: (context, url, error) =>
                                  const Center(
                                    child: Icon(
                                      Icons.broken_image_rounded,
                                      color: AppColors.grey,
                                    ),
                                  ),
                            ),
                          ),

                          AppSpacing.h15,

                          if (categoryName.isNotEmpty) ...[
                            Text(
                              categoryName,
                              textAlign: TextAlign.center,
                              style: AppTextStyles.heading,
                            ),

                            AppSpacing.h5,
                          ],

                          Text(
                            product?.title ?? 'No Title',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.title,
                          ),

                          AppSpacing.h15,

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (product?.category?.contains('shoes') ==
                                      true ||
                                  product?.category?.contains('shirt') ==
                                      true ||
                                  product?.category?.contains('dress') ==
                                      true ||
                                  product?.category?.contains('tops') == true ||
                                  product?.category?.contains('women-shoes') ==
                                      true ||
                                  product?.category?.contains('mens-shoes') ==
                                      true) ...[
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
                              Text(
                                'Delivery by ',
                                style: AppTextStyles.body.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              const Text(
                                '10 May 2026',
                                style: AppTextStyles.title,
                              ),
                            ],
                          ),
                        ],
                      ),

                      AppSpacing.h25,

                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            const Icon(CupertinoIcons.ticket),

                            AppSpacing.w10,

                            const Text(
                              'Apply Coupons',
                              style: AppTextStyles.title,
                            ),

                            const Spacer(),

                            Text(
                              'Select',
                              style: AppTextStyles.caption.copyWith(
                                color: AppColors.pink,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      AppSpacing.h15,
                      const Divider(color: AppColors.grey300),
                      AppSpacing.h15,

                      const Text(
                        'Other Payment Details',
                        style: AppTextStyles.heading,
                      ),

                      AppSpacing.h15,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Order Amounts',
                            style: AppTextStyles.title,
                          ),

                          Text(
                            '\$$price',
                            style: AppTextStyles.title.copyWith(
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),

                      AppSpacing.h10,

                      Row(
                        children: [
                          const Text('Convenience', style: AppTextStyles.title),

                          AppSpacing.w10,

                          Text(
                            'Know More',
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.pink,
                            ),
                          ),

                          const Spacer(),

                          Text(
                            'Apply Coupon',
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.pink,
                            ),
                          ),
                        ],
                      ),

                      AppSpacing.h10,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Delivery Fee',
                            style: AppTextStyles.title,
                          ),

                          Text(
                            'Free',
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.pink,
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
                          const Text(
                            'Order Total',
                            style: AppTextStyles.heading,
                          ),

                          Text(
                            '\$$price',
                            style: AppTextStyles.title.copyWith(
                              color: AppColors.pink,
                              letterSpacing: 0,
                            ),
                          ),
                        ],
                      ),

                      AppSpacing.h10,

                      Row(
                        children: [
                          const Text(
                            'EMI Available',
                            style: AppTextStyles.title,
                          ),

                          AppSpacing.w10,

                          Text(
                            'Details',
                            style: AppTextStyles.caption.copyWith(
                              color: AppColors.pink,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: AppContainer(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 40),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(0, -3),
            ),
          ],

          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('\$$price', style: AppTextStyles.title),

                    AppSpacing.h5,

                    Text(
                      'View Details',
                      style: AppTextStyles.caption.copyWith(
                        color: AppColors.pink,
                      ),
                    ),
                  ],
                ),
              ),

              AppButton(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                fontSize: 16,
                buttonText: 'Proceed to Payment',
                buttonBgColor: AppColors.pink,
                textColor: AppColors.white,
                boxShadow: [],
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/cart_billing_details.dart';
import 'widgets/cart_bottom_bar.dart';
import 'widgets/cart_coupon_section.dart';
import 'widgets/cart_item_card.dart';

class CartScreen extends StatelessWidget {
  final Products? product;

  const CartScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final price = product?.price ?? 0;

    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,

      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              PinnedHeaderSliver(
                child: AppContainer(
                  borderRadius: BorderRadius.zero,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2,
                      offset: Offset(0, 3),
                    ),
                  ],

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_ios_new_rounded),
                      ),

                      const Text(
                        'Shopping Bag',
                        style: AppTextStyles.appBarTitle,
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.heart),
                      ),
                    ],
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CartItemCard(product: product),

                      AppSpacing.h25,

                      CartCouponSection(onCouponTap: () {}),

                      AppSpacing.h15,
                      const Divider(color: AppColors.grey300),
                      AppSpacing.h15,

                      CartBillingDetails(price: price),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: CartBottomBar(price: price, onProceedTap: () {}),
      ),
    );
  }
}
