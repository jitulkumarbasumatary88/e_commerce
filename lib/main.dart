import 'package:e_commerce_app/ui/product_detail/product_detail_reuse/product_detail.dart';
import 'package:e_commerce_app/ui/product_detail/product_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage()
      // home: ProductGridItem(),
      home: ProductItem(),
    );
  }
}
