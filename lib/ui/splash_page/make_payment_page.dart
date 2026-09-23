import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_container.dart';

class MakePaymentPage extends StatelessWidget {
  const MakePaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('2/3'), Text('Skip')],
              ),

              ContentSpace.lHeight,

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomContainer(
                      height: 260,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    ContentSpace.lHeight,
                    Text('Make Payment'),
                    ContentSpace.mHeight,
                    Text(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),

              ContentSpace.lHeight,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Prev'),
                  Row(
                    children: [
                      CustomContainer(
                        height: 8,
                        width: 8,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      ContentSpace.sWidth,
                      CustomContainer(
                        height: 8,
                        width: 24,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      ContentSpace.sWidth,
                      CustomContainer(
                        height: 8,
                        width: 8,
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ],
                  ),
                  Text('Next'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
