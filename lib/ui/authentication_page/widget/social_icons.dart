import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomContainer(
          height: 50,
          width: 50,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.redAccent),
          child: const Center(child: Text('G')),
        ),

        CustomContainer(
          height: 50,
          width: 50,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.black),
          child: const Center(child: Icon(Icons.apple)),
        ),

        CustomContainer(
          height: 50,
          width: 50,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.blue),
          child: const Center(child: Text('f')),
        ),
      ],
    );
  }
}
