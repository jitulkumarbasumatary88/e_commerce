import 'package:flutter/material.dart';

import '../core/app_spacing.dart';
import '../data/products_model.dart';
import 'product_card.dart';

class ProductHorizontalList extends StatelessWidget {
  final List<Products> items;
  final void Function(Products product)? onProductTap;

  const ProductHorizontalList({
    super.key,
    required this.items,
    this.onProductTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => AppSpacing.w10,
        itemBuilder: (context, index) {
          final product = items[index];

          return SizedBox(
            width: 190,
            child: ProductCard(
              product: product,
              onTap: () => onProductTap?.call(product),
            ),
          );
        },
      ),
    );
  }
}
