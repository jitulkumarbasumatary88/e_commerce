import 'package:flutter/material.dart';

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

class CheckoutScreen extends StatelessWidget {
  final Products? product;

  const CheckoutScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
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

                      ShoppingListItem(product: product),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: AppButton(
                padding: const EdgeInsets.symmetric(vertical: 10),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                buttonText: 'Continue',
                buttonBgColor: AppColors.white,
                fontSize: 16,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2,
                    offset: Offset(0, -3),
                  ),
                ],
                onTap: () {
                  AppRoutes.toCartScreen(context, product: product);
                },
              ),
            ),

            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
