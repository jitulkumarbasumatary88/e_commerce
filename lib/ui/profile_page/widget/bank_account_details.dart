import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_text_field.dart';

class BankAccountDetails extends StatelessWidget {
  const BankAccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bank Account Details'),

        ContentSpace.lHeight,

        Text('Bank Account Number'),

        ContentSpace.mHeight,

        CustomTextField(
          hintText: 'Bank Account Number',
          obscureText: true,
          suffixIcon: Icon(Icons.remove_red_eye_rounded),
        ),

        ContentSpace.lHeight,

        Text("Account Holder's Name"),

        ContentSpace.mHeight,

        CustomTextField(hintText: "Account Holder's Name"),

        ContentSpace.lHeight,

        Text('IFSC Code'),

        ContentSpace.mHeight,

        CustomTextField(hintText: 'IFSC Code'),
      ],
    );
  }
}
