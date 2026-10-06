import 'package:e_commerce_app/ui/checkout_page/checkout_page.dart';
import 'package:flutter/material.dart';

import '../../../model/products_model.dart';
import '../../reusable_widgets/custom_container.dart';

class BottomNavButton extends StatelessWidget {
  final Products? product;

  const BottomNavButton({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.black12,
      padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 40),
      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$ ${product?.price ?? 0}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'View Details',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CheckoutPage()),
                  );
                },
                child: CustomContainer(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(8),
                  child: Text(
                    'Proceed to Payment',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
