import 'package:e_commerce_app/reusable/custom_box_reuse.dart';
import 'package:flutter/material.dart';

class ProductGridBox extends StatelessWidget {
  final IconData iconImage;
  final String text1;
  final String text2;
  final String text3;
  final IconData icon;
  final String text4;

  const ProductGridBox({
    super.key,
    required this.iconImage,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.icon,
    required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBoxReuse(
      color: Colors.blue,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(iconImage, size: 150),

          Text(maxLines: 1, overflow: TextOverflow.ellipsis, text1),

          Text(maxLines: 2, overflow: TextOverflow.ellipsis, text2),

          Text(text3),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                for (int i = 0; i < 5; i++) Icon(icon, color: Colors.amber),
                Text(text4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
