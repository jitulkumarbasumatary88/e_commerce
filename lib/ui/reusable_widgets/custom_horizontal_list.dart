import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class CustomHorizontalList extends StatelessWidget {
  final List<dynamic> items;

  const CustomHorizontalList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        clipBehavior: Clip.none,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (context, index) => ContentSpace.mWidth,
        itemBuilder: (context, index) {
          final product = items[index];

          return MediaQuery.withClampedTextScaling(
            maxScaleFactor: 1,
            child: CustomContainer(
              width: 200,
              padding: EdgeInsets.zero,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                ),
              ],

              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomContainer(
                    color: Colors.grey.shade300,
                    height: 150,
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                      width: double.infinity,
                      imageUrl: product.thumbnail,
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

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title ?? 'No Title',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            letterSpacing: 1,
                          ),
                        ),

                        Text(
                          product.description ?? 'No description',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            letterSpacing: 1,
                          ),
                        ),

                        Text(
                          '\$${product.price ?? 0}',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),

                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Builder(
                            builder: (context) {
                              final rating =
                                  double.tryParse('${product.rating}') ?? 0.0;

                              return Row(
                                children: [
                                  for (int star = 0; star < 5; star++)
                                    Icon(
                                      star < rating.floor()
                                          ? Icons.star_rate_rounded
                                          : (star < rating
                                                ? Icons.star_half_rounded
                                                : Icons.star_outline_rounded),
                                      color: star < rating
                                          ? Colors.amber
                                          : Colors.grey,
                                      size: 18,
                                    ),

                                  ContentSpace.sWidth,

                                  Text(
                                    '${product.rating ?? 0}',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
