import 'package:flutter/material.dart';

import '../reusable_widgets/custom_container.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomContainer(
            height: double.infinity,
            width: double.infinity,
            color: Colors.grey,
            borderRadius: BorderRadius.zero,
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'You want\nAuthentic, here\nyou go!',
                  textAlign: TextAlign.center,
                ),

                const Text(
                  'Find it here, buy it now!',
                  textAlign: TextAlign.center,
                ),

                CustomContainer(
                  width: double.infinity,
                  color: Colors.redAccent,
                  child: const Center(
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
