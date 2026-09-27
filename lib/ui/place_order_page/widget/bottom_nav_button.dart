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
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('7,000.00'), Text('View Details')],
                ),
              ),

              CustomContainer(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(6),
                child: Text(
                  'Proceed to Payment',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
