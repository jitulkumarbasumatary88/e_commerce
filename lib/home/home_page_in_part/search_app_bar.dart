import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      primary: false,
      // Taaki status bar ka extra gap na aaye
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      toolbarHeight: 65,
      title: TextField(
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
    );
  }
}
