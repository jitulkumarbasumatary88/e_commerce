import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';

class SuccessfullyPage extends StatelessWidget {
  const SuccessfullyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomContainer(
          height: 200,
          width: 300,
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(50),
                child: Icon(Icons.check, color: Colors.white, size: 40),
              ),

              ContentSpace.lHeight,

              Text('Payment done successfully.'),
            ],
          ),
        ),
      ),
    );
  }
}
