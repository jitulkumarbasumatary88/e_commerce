import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/app_colors.dart';
import '../../core/app_routes.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../data/products_model.dart';
import '../../shared/app_button.dart';
import '../../shared/app_container.dart';
import '../../shared/bottom_nav_bar.dart';
import 'widgets/payment_method_tile.dart';

class PaymentScreen extends StatefulWidget {
  final Products? product;

  const PaymentScreen({super.key, this.product});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectedMethodIndex = 0;

  @override
  Widget build(BuildContext context) {
    final itemPrice = widget.product?.price?.toDouble() ?? 0;
    const shippingFee = 30.0;
    final totalPrice = itemPrice + shippingFee;

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

                      const Text('Payment', style: AppTextStyles.appBarTitle),

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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order',
                            style: AppTextStyles.title.copyWith(
                              color: AppColors.grey,
                            ),
                          ),

                          Text(
                            '\$$itemPrice',
                            style: AppTextStyles.title.copyWith(
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),

                      AppSpacing.h15,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: AppTextStyles.title.copyWith(
                              color: AppColors.grey,
                            ),
                          ),

                          Text(
                            '\$30',
                            style: AppTextStyles.title.copyWith(
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),

                      AppSpacing.h15,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total', style: AppTextStyles.title),

                          Text(
                            '\$${totalPrice.toStringAsFixed(2)}',
                            style: AppTextStyles.title,
                          ),
                        ],
                      ),

                      AppSpacing.h15,
                      const Divider(color: AppColors.grey300),
                      AppSpacing.h15,

                      const Text('Payment', style: AppTextStyles.heading),

                      AppSpacing.h15,

                      PaymentMethodTile(
                        icon: FontAwesomeIcons.ccVisa,
                        text: '*********2109',
                        isSelected: selectedMethodIndex == 0,
                        onTap: () => setState(() => selectedMethodIndex = 0),
                      ),

                      AppSpacing.h15,

                      PaymentMethodTile(
                        icon: FontAwesomeIcons.paypal,
                        text: '*********2109',
                        isSelected: selectedMethodIndex == 1,
                        onTap: () => setState(() => selectedMethodIndex = 1),
                      ),

                      AppSpacing.h15,

                      PaymentMethodTile(
                        icon: FontAwesomeIcons.ccMastercard,
                        text: '*********2109',
                        isSelected: selectedMethodIndex == 2,
                        onTap: () => setState(() => selectedMethodIndex = 2),
                      ),

                      AppSpacing.h15,

                      PaymentMethodTile(
                        icon: FontAwesomeIcons.apple,
                        text: '*********2109',
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

        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                    AppRoutes.toShowOrderSuccess(context);
                  },
                ),
              ),
            ),

            BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
