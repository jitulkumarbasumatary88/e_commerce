import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_rounded, size: 25),
              ),

              Text(
                'Stylish',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 1.5,
                ),
              ),

              InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.person_rounded),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
