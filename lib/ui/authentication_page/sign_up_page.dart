import 'package:e_commerce_app/ui/authentication_page/widget/social_icons.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/custom_container.dart';
import '../reusable_widgets/custom_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  spacing: 20,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Create an\naccount'),

                    const CustomTextField(
                      hintText: 'Username or Email',
                      prefixIcon: Icon(Icons.person_outline),
                    ),

                    const CustomTextField(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_outlined),
                      obscureText: true,
                    ),

                    const CustomTextField(
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_outlined),
                      obscureText: true,
                    ),

                    const Text(
                      'By clicking the Register button, you agree to the public offer',
                    ),

                    CustomContainer(
                      width: double.infinity,
                      color: Colors.redAccent,
                      child: const Center(
                        child: Text(
                          'Create Account',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    const Center(child: Text('- OR Continue with -')),

                    SocialIcons(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('I Already Have an Account '),
                        const Text(
                          'Login',
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ],
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
