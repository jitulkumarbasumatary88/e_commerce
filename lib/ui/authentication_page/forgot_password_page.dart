import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_container.dart';
import '../reusable_widgets/custom_text_field.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContentSpace.lHeight,
              const Text('Forgot\npassword?'),
              ContentSpace.lHeight,

              const CustomTextField(
                hintText: 'Enter your email address',
                prefixIcon: Icon(Icons.mail_outline),
              ),

              ContentSpace.mHeight,

              const Text(
                '* We will send you a message to set or reset your new password',
              ),

              ContentSpace.lHeight,

              CustomContainer(
                width: double.infinity,
                height: 50,
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(12),
                child: const Center(child: Text('Submit')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
