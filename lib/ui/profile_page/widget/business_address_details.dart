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
        Text('Business Address Details'),

        ContentSpace.lHeight,

        Text('Pin Code'),

        ContentSpace.mHeight,

        CustomTextField(hintText: 'Pin Code'),

        ContentSpace.lHeight,

        Text('Address'),

        ContentSpace.mHeight,

        CustomTextField(hintText: 'Address'),

        ContentSpace.lHeight,

        Text('City'),

        ContentSpace.mHeight,

        CustomTextField(hintText: 'City'),

        ContentSpace.lHeight,

        Text('State'),

        ContentSpace.mHeight,

        CustomTextField(hintText: 'State'),

        ContentSpace.lHeight,

        Text('Country'),

        ContentSpace.mHeight,

        CustomTextField(hintText: 'Country'),
      ],
    );
  }
}
