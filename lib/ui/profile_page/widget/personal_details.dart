import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_text_field.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Personal Details'),

        ContentSpace.lHeight,

        Text('Email Address'),

        ContentSpace.mHeight,

        CustomTextField(hintText: 'Email'),

        ContentSpace.lHeight,

        Text('Password'),

        ContentSpace.mHeight,

        CustomTextField(
          hintText: 'Password',
          obscureText: true,
          suffixIcon: Icon(Icons.remove_red_eye_rounded),
        ),

        ContentSpace.mHeight,

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text('Change Password')],
        ),
      ],
    );
  }
}
