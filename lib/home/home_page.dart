import 'package:flutter/material.dart';
import 'package:e_commerce_app/bar/bottom_nav_bar.dart';
import 'package:e_commerce_app/home/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      bottomNavigationBar: BottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: HomePageBody(),
        ),
      ),
    );
  }
}
