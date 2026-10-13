import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/data/products_model.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
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

                      const SizedBox(width: 45),
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
