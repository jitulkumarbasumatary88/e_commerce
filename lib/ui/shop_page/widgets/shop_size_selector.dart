import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class ShopSizeSelector extends StatefulWidget {
  const ShopSizeSelector({super.key});

  @override
  State<ShopSizeSelector> createState() => _ShopSizeSelectorState();
}

class _ShopSizeSelectorState extends State<ShopSizeSelector> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size: ${6 + selectedIndex}UK',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: 1,
          ),
        ),

        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [
            for (int i = 0; i < 5; i++)
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = i;
                  });
                },

                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: i == selectedIndex
                        ? Colors.pinkAccent
                        : Colors.white,
                    border: Border.all(color: Colors.pinkAccent, width: 1.5),
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 2,
                        // spreadRadius: 1,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),

                  child: Text(
                    '${6 + i} UK',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 1,
                      color: i == selectedIndex
                          ? Colors.white
                          : Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
