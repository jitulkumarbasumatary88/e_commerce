import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/material.dart';

/// Image slider displaying product pictures with active index indicators
class ProductImageSlider extends StatefulWidget {
  final List<String> images;

  const ProductImageSlider({super.key, required this.images});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  // Currently viewed image slide index
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Fallback to empty string if image list is empty
    final imageList = widget.images.isNotEmpty ? widget.images : [''];

    return Column(
      children: [
        // Image Container Card with white background and subtle shadow
        AppContainer(
          height: 220,
          color: AppColors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
          child: PageView.builder(
            itemCount: imageList.length,
            onPageChanged: (index) {
              setState(() {
                activeIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: imageList[index],
                fit: BoxFit.contain,
                // Spinner while image loads
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.pink,
                  ),
                ),
                // Fallback broken image icon
                errorWidget: (context, url, error) => const Center(
                  child: Icon(
                    Icons.broken_image_rounded,
                    color: AppColors.grey,
                  ),
                ),
              );
            },
          ),
        ),

        AppSpacing.h10,

        // Capsule indicator dots row showing current slide position
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < imageList.length; i++)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.5),
                child: Container(
                  height: 5,
                  width: i == activeIndex ? 25 : 10,
                  decoration: BoxDecoration(
                    color: i == activeIndex
                        ? AppColors.pink
                        : AppColors.grey300,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
