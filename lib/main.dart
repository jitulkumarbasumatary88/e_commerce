import 'package:e_commerce_app/ui/checkout_page/checkout_page.dart';
import 'package:e_commerce_app/ui/home_page/home_page.dart';
import 'package:e_commerce_app/ui/place_order_page/place_order_page.dart';
import 'package:e_commerce_app/ui/product_page/product_page.dart';
import 'package:e_commerce_app/ui/profile_page/profile_page.dart';
import 'package:e_commerce_app/ui/shipping_page/shipping_page.dart';
import 'package:e_commerce_app/ui/shop_page/shop_page.dart';
import 'package:e_commerce_app/ui/successfully_page/successfully_page.dart';
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
      // home: ProfilePage(),
      // home: CheckoutPage(),
      // home: PlaceOrderPage(),
      // home: ShippingPage(),
      home: SuccessfullyPage(),
    );
  }
}
// git add . ; git commit -m "initial commit" ; git push
