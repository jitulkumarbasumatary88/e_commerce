import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_container.dart';

class GridViewProducts extends StatelessWidget {
  final String? imageURL;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const GridViewProducts({
    super.key,
    this.imageURL,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CachedNetworkImage(
            imageUrl: imageURL ?? '',
            height: 150,
            width: double.infinity,

            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            placeholder: (context, url) => Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              ),
            ),

            errorWidget: (context, url, error) => Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.broken_image_rounded, color: Colors.white),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),

                Text(
                  text2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                ),

                Text(
                  text3,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),

                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Builder(
                    builder: (context) {
                      final rating = double.tryParse(text4) ?? 0.0;

                      return Row(
                        children: [
                          for (int star = 0; star < 5; star++)
                            Icon(
                              star < rating.floor()
                                  ? Icons.star_rate_rounded
                                  : (star < rating
                                        ? Icons.star_half_rounded
                                        : Icons.star_outline_rounded),
                              color: star < rating ? Colors.amber : Colors.grey,
                              size: 18,
                            ),

                          ContentSpace.sWidth,

                          Text(
                            text4,
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
    );
  }
}
