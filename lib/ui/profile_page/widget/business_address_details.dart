import 'package:flutter/material.dart';

import '../../reusable_widgets/constant.dart';
import '../../reusable_widgets/custom_text_field.dart';

class BusinessAddressDetails extends StatelessWidget {
  const BusinessAddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Business Address Details', style: ProfilePageTextStyle.heading),

        ContentSpace.lHeight,

        Text('Pin Code', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(hintText: 'Pin Code'),

        ContentSpace.lHeight,

        Text('Address', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(hintText: 'Address'),

        ContentSpace.lHeight,

        Text('City', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(hintText: 'City'),

        ContentSpace.lHeight,

        Text('State', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(hintText: 'State'),

        ContentSpace.lHeight,

        Text('Country', style: ProfilePageTextStyle.subHeading),
        ContentSpace.mHeight,
        CustomTextField(hintText: 'Country'),
      ],
    );
  }
}
