import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/app_colors.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.google, color: AppColors.pink),
        ),

        IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.apple)),

        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.facebook, color: AppColors.blue),
        ),
      ],
    );
  }
}
