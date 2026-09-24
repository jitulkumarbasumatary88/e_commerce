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
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Forgot\npassword?'),

                    ContentSpace.lHeight,

                    const CustomTextField(
                      hintText: 'Enter your email address',
                      prefixIcon: Icon(Icons.mail_outline),
                    ),

                    ContentSpace.lHeight,

                    const Text(
                      '* We will send you a message to set or reset your new password',
                    ),

                    ContentSpace.lHeight,

                    CustomContainer(
                      width: double.infinity,
                      color: Colors.redAccent,
                      child: const Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
