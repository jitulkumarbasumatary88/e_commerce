import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_container.dart';

class Onboarding extends StatelessWidget {
  final Widget image;
  final String title;
  final String description;
  final int pageIndex;

  const Onboarding({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.pageIndex,
  });

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
                children: [Text('${pageIndex + 1}/3'), Text('Skip')],
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
                      child: image,
                    ),

                    ContentSpace.lHeight,

                    Text(title),

                    ContentSpace.lHeight,

                    Text(description, textAlign: TextAlign.center),
                  ],
                ),
              ),

              ContentSpace.lHeight,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pageIndex == 0 ? ContentSpace.sWidth : Text('Prev'),

                  Row(
                    children: [
                      CustomContainer(
                        height: pageIndex == 0 ? 5 : 10,
                        width: pageIndex == 0 ? 25 : 10,
                        color: pageIndex == 0 ? Colors.black : Colors.grey,
                      ),

                      ContentSpace.sWidth,

                      CustomContainer(
                        height: pageIndex == 1 ? 5 : 10,
                        width: pageIndex == 1 ? 25 : 10,
                        color: pageIndex == 1 ? Colors.black : Colors.grey,
                      ),

                      ContentSpace.sWidth,

                      CustomContainer(
                        height: pageIndex == 2 ? 5 : 10,
                        width: pageIndex == 2 ? 25 : 10,
                        color: pageIndex == 2 ? Colors.black : Colors.grey,
                      ),
                    ],
                  ),

                  Text(
                    pageIndex == 2 ? 'Get Started' : 'Next',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
