import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_text_field.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Personal Details', style: ProfilePageTextStyle.heading),

        ContentSpace.lHeight,

        Text('Email Address', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(hintText: 'Email'),

        ContentSpace.lHeight,

        Text('Password', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(
          hintText: 'Password',
          obscureText: isObscure,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: Icon(
              isObscure
                  ? Icons.visibility_off_rounded
                  : Icons.visibility_rounded,
              color: Colors.grey,
            ),
          ),
        ),

        ContentSpace.mHeight,

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.pinkAccent, width: 1),
                  ),
                ),

                child: const Text(
                  'Change Password',
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 14,
                    letterSpacing: 1,
                    height: 1.1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
