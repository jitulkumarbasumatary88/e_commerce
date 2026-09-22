import 'package:e_commerce_app/ui/home_page/home_page.dart';
import 'package:e_commerce_app/ui/product_page/product_page.dart';
import 'package:e_commerce_app/ui/profile_page/profile_page.dart';
import 'package:e_commerce_app/ui/shop_page/shop_page.dart';
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
      // home: HomePage(),
      // home: ProductPage(),
      // home: ShopPage(),
      home: ProfilePage(),
    );
  }
}
// git add . ; git commit -m "initial commit" ; git push
