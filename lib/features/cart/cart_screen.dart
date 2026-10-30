import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../data/products_model.dart';
import '../../riverpod/cart_riverpod.dart';
import '../../shared/app_button.dart';
import '../../shared/app_container.dart';
import '../../shared/bottom_nav_bar.dart';
import 'widgets/cart_billing_details.dart';
import 'widgets/cart_bottom_bar.dart';
import 'widgets/cart_coupon_section.dart';
import 'widgets/cart_item_card.dart';

class CartScreen extends ConsumerWidget {
  final Products? product;

  const CartScreen({super.key, this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartAsync = ref.watch(cartNotifierProvider);

    final cartList = cartAsync.value ?? [];

    final singleItem = product != null
        ? cartList.where((item) => item.productId == product?.id).firstOrNull
        : null;

    final displayPrice = product != null
        ? ((product?.price?.toDouble() ?? 0.0) * (singleItem?.quantity ?? 1))
        : cartList.fold<double>(
            0.0,
            (sum, item) => sum + (item.price * item.quantity),
          );

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
                child: cartList.isEmpty
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 80),
                          child: Column(
                            children: [
                              Icon(
                                Icons.remove_shopping_cart_outlined,
                                size: 80,
                                color: AppColors.grey,
                              ),

                              AppSpacing.h15,

                              const Text(
                                'Your Cart is Empty!',
                                style: AppTextStyles.heading,
                              ),

                              AppSpacing.h5,

                              Text(
                                'Looks like you haven\'t added anything yet.',
                                style: AppTextStyles.body.copyWith(
                                  color: AppColors.grey,
                                ),
                              ),

                              AppSpacing.h20,

                              AppButton(
                                buttonText: 'Shop Now',
                                buttonBgColor: AppColors.pink,
                                textColor: AppColors.white,
                                onTap: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (product != null && singleItem != null) ...[
                              CartItemCard(
                                product: product,

                                quantity: singleItem.quantity,

                                onIncrementTap: () {
                                  ref
                                      .read(cartNotifierProvider.notifier)
                                      .updateQuantity(
                                        singleItem.id,
                                        singleItem.quantity + 1,
                                      );
                                },

                                onDecrementTap: () {
                                  ref
                                      .read(cartNotifierProvider.notifier)
                                      .updateQuantity(
                                        singleItem.id,
                                        singleItem.quantity - 1,
                                      );
                                },

                                onDeleteTap: () {
                                  ref
                                      .read(cartNotifierProvider.notifier)
                                      .removeFromCart(singleItem.id);
                                },
                              ),

                              AppSpacing.h15,
                            ] else ...[
                              for (var item in cartList) ...[
                                CartItemCard(
                                  product: Products(
                                    id: item.productId,
                                    title: item.title,
                                    price: item.price,
                                    thumbnail: item.thumbnail,
                                    category: item.category,
                                  ),

                                  quantity: item.quantity,

                                  onIncrementTap: () {
                                    ref
                                        .read(cartNotifierProvider.notifier)
                                        .updateQuantity(
                                          item.id,
                                          item.quantity + 1,
                                        );
                                  },

                                  onDecrementTap: () {
                                    ref
                                        .read(cartNotifierProvider.notifier)
                                        .updateQuantity(
                                          item.id,
                                          item.quantity - 1,
                                        );
                                  },

                                  onDeleteTap: () {
                                    ref
                                        .read(cartNotifierProvider.notifier)
                                        .removeFromCart(item.id);
                                  },
                                ),

                                AppSpacing.h15,
                              ],
                            ],

                            AppSpacing.h25,

                            CartCouponSection(onCouponTap: () {}),

                            AppSpacing.h15,
                            const Divider(color: AppColors.grey300),
                            AppSpacing.h15,

                            CartBillingDetails(price: displayPrice),
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: cartList.isEmpty
            ? BottomNavBar()
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CartBottomBar(
                    price: displayPrice,
                    onProceedTap: () {
                      AppRoutes.toPaymentScreen(context, product: product);
                    },
                  ),

                  BottomNavBar(),
                ],
              ),
      ),
    );
  }
}
