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
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            expandedHeight: 200,
            leading: Icon(Icons.arrow_back_ios_new_rounded),
            title: Text('Checkout'),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Align(
                alignment: Alignment(0.0, 0.50),
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 70),
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

                  CustomContainer(
                    width: double.infinity,
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.circular(6),
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
