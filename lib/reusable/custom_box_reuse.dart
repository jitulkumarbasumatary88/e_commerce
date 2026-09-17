import 'package:flutter/material.dart';

class CustomBoxReuse extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Border? border;
  final Widget? child;

  const CustomBoxReuse({
    super.key,
    this.height,
    this.width,
    this.padding,
    this.color,
    this.border,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding ?? const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: border,
      ),
      child: child,
    );
  }
}
