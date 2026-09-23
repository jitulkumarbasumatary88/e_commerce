import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_container.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image placeholder
          CustomContainer(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey,
          ),

          // Bottom Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'You want\nAuthentic, here\nyou go!',
                    textAlign: TextAlign.center,
                  ),

                  ContentSpace.mHeight,

                  const Text(
                    'Find it here, buy it now!',
                    textAlign: TextAlign.center,
                  ),

                  ContentSpace.lHeight,

                  CustomContainer(
                    width: double.infinity,
                    height: 50,
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(12),
                    child: const Center(child: Text('Get Started')),
                  ),

                  ContentSpace.mHeight,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
