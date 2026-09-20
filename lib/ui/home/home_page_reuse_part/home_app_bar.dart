import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: false,
      centerTitle: true,
      leading: Icon(Icons.menu_rounded),
      title: Text('Stylish'),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
          child: Icon(Icons.person_rounded),
        ),
      ],
    );
  }
}
