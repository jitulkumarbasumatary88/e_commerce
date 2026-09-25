import 'package:flutter/material.dart';

List<Widget> buildCustomHeader() {
  return [
    const SliverAppBar(
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
    ),

    SliverAppBar(
      pinned: true,
      // primary: false,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      // toolbarHeight: 65,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: 'Search any Product...',
            prefixIcon: const Icon(Icons.search_rounded),
            suffixIcon: const Icon(Icons.mic_rounded),
            filled: true,
            fillColor: Colors.blue,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    ),
  ];
}
