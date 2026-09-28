import 'package:e_commerce_app/ui/authentication_page/widget/social_icons.dart';
import 'package:flutter/material.dart';

import '../reusable_widgets/custom_container.dart';
import '../reusable_widgets/custom_text_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                    const Text('Welcome\nBack!'),

                    const CustomTextField(
                      hintText: 'Username or Email',
                      prefixIcon: Icon(Icons.person_outline),
                    ),

                    Column(
                      spacing: 5,
                      children: [
                        const CustomTextField(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: Icon(Icons.visibility_outlined),
                          obscureText: true,
                        ),

                        Align(
                          alignment: Alignment.centerRight,
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                      ],
                    ),

                    CustomContainer(
                      width: double.infinity,
                      color: Colors.redAccent,
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    const Center(child: Text('- OR Continue with -')),

                    SocialIcons(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Create An Account '),
                        const Text(
                          'Sign Up',
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
