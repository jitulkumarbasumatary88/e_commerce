import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class CustomHorizontalList extends StatelessWidget {
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
                  // color: Colors.grey,

                  child: (product.thumbnail != null)
                      ? Image.network(
                          product.thumbnail.toString().trim(),
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) =>
                              const Icon(Icons.broken_image),
                        )
                      : const Center(child: Icon(Icons.image_not_supported)),
                ),

                Text(
                  product.brand ?? product.category ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),

                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  product.title ?? '',
                ),

                Text('\$${product.price ?? 0}' , style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),

                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.star_rate_rounded,
                        color: i < ((product.rating as num?)?.round() ?? 0)
                            ? Colors.amber
                            : Colors.grey,
                      ),

                    ContentSpace.sWidth,

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
