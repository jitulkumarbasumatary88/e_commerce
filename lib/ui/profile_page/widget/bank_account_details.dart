import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_text_field.dart';

class BankAccountDetails extends StatefulWidget {
  const BankAccountDetails({super.key});

  @override
  State<BankAccountDetails> createState() => _BankAccountDetailsState();
}

class _BankAccountDetailsState extends State<BankAccountDetails> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bank Account Details', style: ProfilePageTextStyle.heading),

        ContentSpace.lHeight,

        Text('Bank Account Number', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(
          hintText: 'Bank Account Number',
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

        ContentSpace.lHeight,

        Text("Account Holder's Name", style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(hintText: "Account Holder's Name"),

        ContentSpace.lHeight,

        Text('IFSC Code', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(hintText: 'IFSC Code'),
      ],
    );
  }
}
