/*import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: 'Search any Product...',
        prefixIcon: const Icon(Icons.search_rounded),
        suffixIcon: const Icon(Icons.mic_rounded),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
      ),

      child: SearchBar(
        hintText: 'Search any Product...',
        backgroundColor: const WidgetStatePropertyAll(Colors.white),
        elevation: const WidgetStatePropertyAll(3),
        shadowColor: WidgetStatePropertyAll(Colors.black87),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        leading: const Icon(Icons.search_rounded),
        trailing: const [Icon(Icons.mic_rounded)],
      ),
    );
  }
}
