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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContentSpace.lHeight,
              const Text('Create an\naccount'),
              ContentSpace.lHeight,

              const CustomTextField(
                hintText: 'Username or Email',
                prefixIcon: Icon(Icons.person_outline),
              ),

              ContentSpace.mHeight,

              const CustomTextField(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
                obscureText: true,
              ),

              ContentSpace.mHeight,

              const CustomTextField(
                hintText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: Icon(Icons.visibility_outlined),
                obscureText: true,
              ),

              ContentSpace.mHeight,

              const Text(
                'By clicking the Register button, you agree to the public offer',
              ),

              ContentSpace.lHeight,

              CustomContainer(
                width: double.infinity,
                height: 50,
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(12),
                child: const Center(child: Text('Create Account')),
              ),

              ContentSpace.lHeight,

              const Center(child: Text('- OR Continue with -')),

              ContentSpace.mHeight,

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainer(
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.redAccent),
                    child: const Center(child: Text('G')),
                  ),
                  ContentSpace.mWidth,
                  CustomContainer(
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black),
                    child: const Center(child: Icon(Icons.apple)),
                  ),
                  ContentSpace.mWidth,
                  CustomContainer(
                    height: 50,
                    width: 50,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blue),
                    child: const Center(child: Text('f')),
                  ),
                ],
              ),

              ContentSpace.lHeight,

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('I Already Have an Account '),
                  const Text('Login'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
