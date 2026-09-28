import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class PaymentMethodsName extends StatelessWidget {
  final String text1;
  final String text2;

  const PaymentMethodsName({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      border: Border.all(color: Colors.pinkAccent),
      borderRadius: BorderRadius.circular(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(text1), Text(text2)],
      ),
    );
  }
}
