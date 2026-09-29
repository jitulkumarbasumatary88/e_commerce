import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'constant.dart';

class CustomHorizontalList extends StatelessWidget {
  //
  final List<dynamic> items;

  const CustomHorizontalList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,

        separatorBuilder: (BuildContext context, int index) {
          return ContentSpace.mWidth;
        },

        itemBuilder: (context, index) {
          //
          final product = items[index];

          return CustomContainer(
            width: 200,
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainer(
                  height: 150,
                  width: double.infinity,
                  color: Colors.grey,
                  //
                  child: product.thumbnail != null
                      ? CachedNetworkImage(
                          imageUrl: product.thumbnail!,
                          fit: BoxFit.cover,
                          placeholder: (_, __) => const Center(
                            child: CircularProgressIndicator(strokeWidth: 2),
                          ),
                          errorWidget: (_, __, ___) =>
                              const Icon(Icons.broken_image),
                        )
                      : const SizedBox(),
                ),

                // Text('Nike Sneakers'),
                Text(
                  product.brand ?? product.category ?? '',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),

                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  // 'Nike Air Jordan Retro 1 Low Mystic Black',
                  product.title ?? '',
                ),

                // Text('₹1,900'),
                Text('\$${product.price ?? 0}'),

                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.star_rate_rounded,
                        // color: i < 4 ? Colors.amber : Colors.grey,
                        // color: i < (product.rating?.round() ?? 0)
                        color: i < ((product.rating as num?)?.round() ?? 0)
                            ? Colors.amber
                            : Colors.grey,
                      ),

                    ContentSpace.sWidth,

                    // Text('46,890'),
                    // Text('${product.reviews?.length ?? 0}'),
                    // Text('${product.rating ?? 0}')
                    Text('${((product.rating as num?)?.round() ?? 0)}'),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
