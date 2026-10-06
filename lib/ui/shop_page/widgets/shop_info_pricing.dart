import 'package:e_commerce_app/model/products_model.dart';
import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';

class ShopInfoPricing extends StatelessWidget {
  final Products? product;

  const ShopInfoPricing({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    final price = product?.price ?? 0;
    final discount = product?.discountPercentage ?? 0;
    final originalPrice = discount > 0
        ? (price / (1 - (discount / 100))).toStringAsFixed(2)
        : price.toString();
    final rating = product?.rating?.toDouble() ?? 0.0;
    final categoryName =
        (product?.category != null && product!.category!.isNotEmpty)
        ? '${product!.category![0].toUpperCase()}${product!.category!.substring(1)}'
        : '';

    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product?.title ?? 'No Title',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            letterSpacing: 1,
          ),
        ),

        Text(
          product?.brand != null
              ? '${product?.brand} • $categoryName'
              : categoryName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            // fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 1,
          ),
        ),

        Row(
          children: [
            for (int star = 0; star < 5; star++)
              Icon(
                star < rating.floor()
                    ? Icons.star_rate_rounded
                    : (star < rating
                          ? Icons.star_half_rounded
                          : Icons.star_outline_rounded),
                color: star < rating ? Colors.amber : Colors.grey,
                size: 20,
              ),

            ContentSpace.mWidth,

            Text(
              '$rating (${product?.reviews?.length ?? 0} reviews)',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),

        Row(
          spacing: 10,
          children: [
            Text(
              '\$$originalPrice',
              style: TextStyle(
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.grey,
                fontSize: 15,
              ),
            ),

            Text('\$$price', style: TextStyle(fontSize: 15)),

            Text(
              '${discount.round()}% Off',
              style: TextStyle(
                color: Colors.pinkAccent,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),

        Text(
          'Product Details',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            letterSpacing: 1,
          ),
        ),

        Text(
          product?.description ?? 'No description available.',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
