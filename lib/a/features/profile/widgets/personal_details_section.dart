import 'package:e_commerce_app/a/core/app_colors.dart';
import 'package:e_commerce_app/a/core/app_spacing.dart';
import 'package:e_commerce_app/a/core/app_text_styles.dart';
import 'package:e_commerce_app/a/shared/app_text_field.dart';
import 'package:flutter/material.dart';

class PersonalDetailsSection extends StatefulWidget {
  const PersonalDetailsSection({super.key});

  @override
  State<PersonalDetailsSection> createState() => _PersonalDetailsSectionState();
}

class _PersonalDetailsSectionState extends State<PersonalDetailsSection> {
  bool _isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Personal Details', style: AppTextStyles.heading),

        AppSpacing.h20,

        Text('Email Address', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(
          hintText: 'Enter Email Address',
          prefixIcon: Icon(Icons.email_outlined, color: AppColors.grey),
        ),

        AppSpacing.h20,

        Text('Password', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(
          hintText: 'Enter Password',
          obscureText: _isPasswordObscure,
          prefixIcon: const Icon(Icons.lock_outline, color: AppColors.grey),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isPasswordObscure = !_isPasswordObscure;
              });
            },
            icon: Icon(
              _isPasswordObscure
                  ? Icons.visibility_off_rounded
                  : Icons.visibility_rounded,
              color: AppColors.grey,
            ),
          ),
        ),

        AppSpacing.h5,

        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            onTap: () {},

            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: AppColors.pink, width: 1),
                ),
              ),

              child: Text(
                'Change Password',
                style: AppTextStyles.caption.copyWith(color: AppColors.pink),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
