import 'package:e_commerce_app/riverpod/cart_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../data/products_model.dart';
import '../../shared/app_button.dart';
import '../../shared/app_container.dart';
import '../../shared/bottom_nav_bar.dart';
import 'widgets/delivery_address_card.dart';
import 'widgets/shopping_list_item.dart';

class CheckoutScreen extends ConsumerWidget {
  final Products? product;

  const CheckoutScreen({super.key, this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkoutAsync = ref.watch(cartNotifierProvider);

    final checkoutList = checkoutAsync.value ?? [];

    final isProductInCart = checkoutList.any(
      (item) => item.productId == product?.id,
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

                      const Text('Checkout', style: AppTextStyles.appBarTitle),

                      const SizedBox(width: 45),
                    ],
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const DeliveryAddressCard(),

                      AppSpacing.h15,

                      const Text('Shopping List', style: AppTextStyles.heading),

                      AppSpacing.h15,

                      if (product != null && isProductInCart) ...[
                        ShoppingListItem(product: product),
                      ] else if (checkoutList.isEmpty)
                        Center(
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
                                  'Your Shopping List is Empty!',
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
                      else ...[
                        for (var item in checkoutList) ...[
                          ShoppingListItem(
                            product: Products(
                              id: item.productId,
                              title: item.title,
                              price: item.price,
                              thumbnail: item.thumbnail,
                              rating: item.rating,
                            ),
                          ),

                          AppSpacing.h15,
                        ],
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: checkoutList.isEmpty
            ? BottomNavBar()
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 15,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: AppButton(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        buttonText: 'Continue',
                        fontSize: 16,
                        textColor: AppColors.white,
                        buttonBgColor: AppColors.pink,
                        boxShadow: const [],
                        onTap: () {
                          AppRoutes.toCartScreen(context, product: product);
                        },
                      ),
                    ),
                  ),

                  const BottomNavBar(),
                ],
              ),
      ),
    );
  }
}
