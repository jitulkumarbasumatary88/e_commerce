import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class ShopImageSlider extends StatefulWidget {
  final List<String> images;

  const ShopImageSlider({super.key, required this.images});

  @override
  State<ShopImageSlider> createState() => _ShopImageSliderState();
}

class _ShopImageSliderState extends State<ShopImageSlider> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final imageList = widget.images.isNotEmpty ? widget.images : [''];

    return Column(
      spacing: 10,
      children: [
        CustomContainer(
          height: 200,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2,
              // spreadRadius: 1,
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
                height: 200,
                width: double.infinity,
                imageUrl: imageList[index],
                fit: BoxFit.contain,

                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.grey,
                  ),
                ),

                errorWidget: (context, url, error) => Center(
                  child: Icon(Icons.broken_image_rounded, color: Colors.grey),
                ),
              );
            },
          ),
        ),

        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < imageList.length; i++)
              CustomContainer(
                height: 5,
                width: 25,
                color: i == activeIndex
                    ? Colors.pinkAccent
                    : Colors.grey.shade300,
              ),
          ],
        ),
      ],
    );
  }
}
