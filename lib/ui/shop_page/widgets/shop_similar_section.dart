import 'package:e_commerce_app/ui/reusable_widgets/custom_sort_filter_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../model/products_model.dart';
import '../../../state_management/riverpod.dart';
import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_horizontal_list.dart';

class ShopSimilarSection extends ConsumerWidget {
  final Products? product;

  const ShopSimilarSection({super.key, this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsState = ref.watch(productsProvider);

    return productsState.when(
      data: (ProductsModel data) {
        final allProducts = data.products ?? [];

        final similarList = allProducts
            .where(
              (p) => p.category == product?.category && p.id != product?.id,
            )
            .toList();

        final displayList = similarList.isNotEmpty ? similarList : allProducts;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Similar To',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                letterSpacing: 1,
              ),
            ),

            ContentSpace.mHeight,

            CustomSortFilterBar(title: '${displayList.length}+ Items'),

            ContentSpace.mHeight,

            CustomHorizontalList(items: displayList),
          ],
        );
      },

      loading: () => Center(child: CircularProgressIndicator()),

      error: (error, _) => Center(child: Text(error.toString())),
    );
  }
}
