import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_spacing.dart';
import '../../../core/app_text_styles.dart';
import '../../../shared/app_text_field.dart';

class BankAccountSection extends StatefulWidget {
  const BankAccountSection({super.key});

  @override
  State<BankAccountSection> createState() => _BankAccountSectionState();
}

class _BankAccountSectionState extends State<BankAccountSection> {
  bool _isBankObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        const Text('Bank Account Details', style: AppTextStyles.heading),

        AppSpacing.h20,

        // Bank Account Number
        const Text('Bank Account Number', style: AppTextStyles.body),
        AppSpacing.h5,
        AppTextField(
          hintText: 'Bank Account Number',
          obscureText: _isBankObscure,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _isBankObscure = !_isBankObscure;
              });
            },
            icon: Icon(
              _isBankObscure
                  ? Icons.visibility_off_rounded
                  : Icons.visibility_rounded,
              color: AppColors.grey,
            ),
          ),
        ),

        AppSpacing.h20,

        // Account Holder's Name
        const Text("Account Holder's Name", style: AppTextStyles.body),
        AppSpacing.h5,
        const AppTextField(hintText: "Account Holder's Name"),

        AppSpacing.h20,

        // IFSC Code
        const Text('IFSC Code', style: AppTextStyles.body),
        AppSpacing.h5,
        const AppTextField(hintText: 'IFSC Code'),
      ],
    );
  }
}
