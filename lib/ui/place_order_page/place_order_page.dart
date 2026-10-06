import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/ui/place_order_page/widget/bottom_nav_button.dart';
import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/products_model.dart';
import '../reusable_widgets/custom_container.dart';

class PlaceOrderPage extends StatelessWidget {
  final Products? product;

  const PlaceOrderPage({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow,
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            PinnedHeaderSliver(
              child: CustomContainer(
                // color: Colors.blue,
                borderRadius: BorderRadius.zero,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                    ),

                    Text(
                      'Shopping Bag',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        letterSpacing: 1,
                      ),
                    ),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.heart),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 30,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // spacing: 5,
                      children: [
                        CustomContainer(
                          height: 150,
                          width: 250,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 2,
                              // spreadRadius: 1,
                              offset: Offset(0, 3),
                            ),
                          ],
                          child: CachedNetworkImage(
                            width: double.infinity,
                            imageUrl: product?.thumbnail ?? '',
                            fit: BoxFit.contain,

                            placeholder: (context, url) => Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            ),

                            errorWidget: (context, url, error) => Center(
                              child: Icon(
                                Icons.broken_image_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        ContentSpace.mHeight,

                        Text(
                          product?.category != null
                              ? '${product!.category![0].toUpperCase()}${product!.category!.substring(1)}'
                              : '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                        ),

                        ContentSpace.sHeight,

                        Text(
                          product?.title ?? '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        ),

                        ContentSpace.mHeight,

                        Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (product?.category?.contains('shoes') == true ||
                                product?.category?.contains('shirt') == true ||
                                product?.category?.contains('dress') == true)
                              CustomButton(
                                buttonText: 'Size 42',
                                textColor: Colors.black,
                                buttonIcon: Icons.arrow_drop_down_rounded,
                                buttonIconColor: Colors.black,
                                buttonBgColor: Colors.grey.shade300,
                              ),

                            CustomButton(
                              buttonText: 'Qty 1',
                              textColor: Colors.black,
                              buttonIcon: Icons.arrow_drop_down_rounded,
                              buttonIconColor: Colors.black,
                              buttonBgColor: Colors.grey.shade300,
                            ),
                          ],
                        ),

                        ContentSpace.lHeight,

                        Row(
                          spacing: 5,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Delivery by',
                              style: TextStyle(
                                // fontWeight: FontWeight.w500,
                                fontSize: 14,
                                letterSpacing: 1,
                              ),
                            ),

                            Text(
                              '10 May 2XXX',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                // letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      spacing: 10,
                      children: [
                        Icon(CupertinoIcons.ticket),

                        Text(
                          'Apply Coupons',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        ),

                        Spacer(),

                        Text(
                          'Select',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),

                    Divider(color: Colors.grey),

                    Text(
                      'Other Payment Details',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        letterSpacing: 1,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          'Order Amounts',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$ ${product?.price ?? 0}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      spacing: 10,
                      children: [
                        Text(
                          'Convenience',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          'Know More',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            letterSpacing: 1,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Apply Coupon',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Fee',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          'Free',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),

                    Divider(color: Colors.grey),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order Total',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          '\$ ${product?.price ?? 0}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      spacing: 10,
                      children: [
                        Text(
                          'EMI Available',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            letterSpacing: 1,
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

      bottomNavigationBar: BottomNavButton(product: product),
    );
  }
}
