import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.redAccent,
      unselectedItemColor: Colors.black54,
      onTap: (index) {},
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),

        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_rounded),
          label: 'Wishlist',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'Cart',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          label: 'Search',
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Setting',
        ),
      ],
    );
  }
}
