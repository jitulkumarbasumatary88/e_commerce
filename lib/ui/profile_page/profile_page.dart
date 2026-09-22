import 'package:e_commerce_app/ui/reusable_widgets/constant.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
import 'package:e_commerce_app/ui/reusable_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Personal Details'),

                  ContentSpace.lHeight,

                  Text('Email Address'),
                  ContentSpace.mHeight,
                  CustomTextField(hintText: 'Email'),

                  ContentSpace.lHeight,

                  Text('Password'),
                  ContentSpace.mHeight,
                  CustomTextField(
                    hintText: 'Password',
                    obscureText: true,
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  ),

                  ContentSpace.mHeight,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text('Change Password')],
                  ),

                  ContentSpace.lHeight,
                  Divider(color: Colors.grey),
                  ContentSpace.lHeight,

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

                  ContentSpace.lHeight,
                  Divider(color: Colors.grey),
                  ContentSpace.lHeight,

                  Text('Bank Account Details'),

                  ContentSpace.lHeight,

                  Text('Bank Account Number'),
                  ContentSpace.mHeight,
                  CustomTextField(
                    hintText: 'Bank Account Number',
                    obscureText: true,
                    suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  ),

                  ContentSpace.lHeight,

                  Text("Account Holder's Name"),
                  ContentSpace.mHeight,
                  CustomTextField(hintText: "Account Holder's Name"),

                  ContentSpace.lHeight,

                  Text('IFSC Code'),
                  ContentSpace.mHeight,
                  CustomTextField(hintText: 'IFSC Code'),

                  ContentSpace.lHeight,

                  CustomContainer(
                    width: double.infinity,
                    color: Colors.pinkAccent,
                    child: Center(child: Text('Save')),
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
