import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

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
            spacing: 30,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(50),
                child: Icon(Icons.check, color: Colors.white, size: 40),
              ),

              Text('Payment done successfully.'),
            ],
          ),
        ),
      ),
    );
  }
}
