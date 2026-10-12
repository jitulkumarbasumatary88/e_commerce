import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/shared/app_container.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatefulWidget {
  final List<String> images;

  const ProductImageSlider({super.key, required this.images});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final imageList = widget.images.isNotEmpty ? widget.images : [''];

    return Column(
      children: [
        AppContainer(
          height: 200,
          color: AppColors.grey100,

          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
              offset: Offset(0, 3),
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

                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.pink,
                  ),
                ),

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

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < imageList.length; i++)
              AppContainer(
                height: 5,
                width: i == activeIndex ? 25 : 10,
                color: i == activeIndex ? AppColors.pink : AppColors.grey300,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                borderRadius: BorderRadius.circular(5),
              ),
          ],
        ),
      ],
    );
  }
}
