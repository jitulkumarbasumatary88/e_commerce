import 'package:e_commerce_app/ui/authentication_page/widget/social_icons.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/constant.dart';
import '../reusable_widgets/custom_container.dart';
import '../reusable_widgets/custom_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                    const Text('Create an\naccount'),

                    ContentSpace.lHeight,

                    const CustomTextField(
                      hintText: 'Username or Email',
                      prefixIcon: Icon(Icons.person_outline),
                    ),

                    ContentSpace.lHeight,

                    const CustomTextField(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_outlined),
                      obscureText: true,
                    ),

                    ContentSpace.lHeight,

                    const CustomTextField(
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_outlined),
                      obscureText: true,
                    ),

                    ContentSpace.lHeight,

                    const Text(
                      'By clicking the Register button, you agree to the public offer',
                    ),

                    ContentSpace.lHeight,

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

                    ContentSpace.lHeight,

                    const Center(child: Text('- OR Continue with -')),

                    ContentSpace.lHeight,

                    SocialIcons(),

                    ContentSpace.lHeight,

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
