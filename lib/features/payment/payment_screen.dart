import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../data/products_model.dart';
import '../../shared/app_button.dart';
import '../../shared/app_container.dart';
import 'widgets/payment_method_tile.dart';

/// Payment Screen: Order summary, payment methods selection aur continue action
class PaymentScreen extends StatefulWidget {
  final Products? product;

  const PaymentScreen({super.key, this.product});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  // Currently selected payment method index (Default VISA selected)
  int selectedMethodIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Dynamic price calculation ya fallback
    final itemPrice = widget.product?.price?.toDouble() ?? 7000.0;
    const shippingFee = 30.0;
    final totalPrice = itemPrice + shippingFee;

    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              // Pinned Header: Back button + Centered Title
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
                      // Counter-balance for centering
                    ],
                  ),
                ),
              ),

              // Main Content
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 1. Order Price Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Order', style: AppTextStyles.body),
                          Text('\$ $itemPrice', style: AppTextStyles.title),
                        ],
                      ),

                      AppSpacing.h15,

                      // 2. Shipping Fee Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Shipping', style: AppTextStyles.body),
                          const Text('\$ 30', style: AppTextStyles.title),
                        ],
                      ),

                      AppSpacing.h15,

                      // 3. Total Amount Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Total', style: AppTextStyles.title),
                          Text(
                            '\$ $totalPrice',
                            style: AppTextStyles.title.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      AppSpacing.h15,
                      const Divider(color: AppColors.grey300),
                      AppSpacing.h15,

                      // 4. Payment Heading
                      const Text('Payment', style: AppTextStyles.heading),

                      AppSpacing.h15,

                      // 5. Payment Methods List
                      PaymentMethodTile(
                        text1: 'VISA',
                        text2: '*********2109',
                        isSelected: selectedMethodIndex == 0,
                        onTap: () => setState(() => selectedMethodIndex = 0),
                      ),

                      AppSpacing.h15,

                      PaymentMethodTile(
                        text1: 'PayPal',
                        text2: '*********2109',
                        isSelected: selectedMethodIndex == 1,
                        onTap: () => setState(() => selectedMethodIndex = 1),
                      ),

                      AppSpacing.h15,

                      PaymentMethodTile(
                        text1: 'MasterCard',
                        text2: '*********2109',
                        isSelected: selectedMethodIndex == 2,
                        onTap: () => setState(() => selectedMethodIndex = 2),
                      ),

                      AppSpacing.h15,

                      PaymentMethodTile(
                        text1: 'Apple',
                        text2: '*********2109',
                        isSelected: selectedMethodIndex == 3,
                        onTap: () => setState(() => selectedMethodIndex = 3),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // Bottom Continue / Proceed Button
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SizedBox(
            width: double.infinity,
            child: AppButton(
              padding: const EdgeInsets.symmetric(vertical: 14),
              buttonText: 'Continue',
              buttonBgColor: AppColors.pink,
              textColor: AppColors.white,
              fontSize: 16,
              boxShadow: const [],
              onTap: () {
                AppRoutes.toShowOrderSuccess(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
