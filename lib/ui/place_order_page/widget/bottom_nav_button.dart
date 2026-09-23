import 'package:flutter/material.dart';

import '../../reusable_widgets/custom_container.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: Colors.grey,
      padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 40),
      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('7,000.00'), Text('View Details')],
                ),
              ),
              CustomContainer(
                color: Colors.redAccent,
                child: Text('Proceed to Payment'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
