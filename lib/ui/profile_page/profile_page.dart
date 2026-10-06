import 'package:e_commerce_app/ui/profile_page/widget/bank_account_details.dart';
import 'package:e_commerce_app/ui/profile_page/widget/business_address_details.dart';
import 'package:e_commerce_app/ui/profile_page/widget/personal_details.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              centerTitle: true,
              expandedHeight: 200,

              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios_new_rounded),
              ),

              title: Text(
                'Profile',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  letterSpacing: 1,
                ),
              ),

              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                background: Align(
                  alignment: Alignment(0.0, 0.40),

                  child: Stack(
                    children: [
                      InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {},

                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.pinkAccent,
                          foregroundColor: Colors.white,
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
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: const Icon(
                              Icons.edit_rounded,
                              size: 14,
                              color: Colors.white,
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
                padding: const EdgeInsets.all(10),
                child: Column(
                  spacing: 30,
                  children: [
                    PersonalDetails(),

                    Divider(color: Colors.grey),

                    BusinessAddressDetails(),

                    Divider(color: Colors.grey),

                    BankAccountDetails(),

                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(8),
                      child: CustomContainer(
                        width: double.infinity,
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(8),
                        child: Center(
                          child: Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
