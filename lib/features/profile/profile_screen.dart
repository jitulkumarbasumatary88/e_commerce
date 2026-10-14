import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_spacing.dart';
import '../../core/app_text_styles.dart';
import '../../shared/app_button.dart';
import 'widgets/bank_account_section.dart';
import 'widgets/business_address_section.dart';
import 'widgets/personal_details_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },

        child: Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  pinned: true,
                  centerTitle: true,
                  expandedHeight: 200,
                  backgroundColor: AppColors.white,

                  leading: IconButton(
                    onPressed: () => Navigator.pop(context),

                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),

                  title: const Text(
                    'Profile',
                    style: AppTextStyles.appBarTitle,
                  ),

                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.parallax,
                    background: Align(
                      alignment: const Alignment(0.0, 0.40),
                      child: Stack(
                        children: [
                          InkWell(
                            customBorder: const CircleBorder(),
                            onTap: () {},

                            child: const CircleAvatar(
                              radius: 50,
                              backgroundColor: AppColors.pink,
                              foregroundColor: AppColors.white,
                              child: Icon(Icons.person, size: 70),
                            ),
                          ),

                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              customBorder: const CircleBorder(),
                              onTap: () {},

                              child: Container(
                                padding: const EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: AppColors.blue,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.white,
                                    width: 2,
                                  ),
                                ),

                                child: const Icon(
                                  Icons.edit_rounded,
                                  size: 14,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 15,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PersonalDetailsSection(),

                        AppSpacing.h20,
                        const Divider(color: AppColors.grey300),
                        AppSpacing.h20,

                        const BusinessAddressSection(),

                        AppSpacing.h20,
                        const Divider(color: AppColors.grey300),
                        AppSpacing.h20,

                        const BankAccountSection(),

                        AppSpacing.h30,

                        SizedBox(
                          width: double.infinity,
                          child: AppButton(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            fontSize: 18,
                            buttonText: 'Save',
                            buttonBgColor: AppColors.pink,
                            textColor: AppColors.white,
                            boxShadow: [],
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
