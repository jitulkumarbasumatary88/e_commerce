import 'package:e_commerce_app/ui/reusable_widgets/custom_container.dart';
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
                alignment: Alignment(0.0, 0.65),
                child: CircleAvatar(
                  radius: 50,
                  child: Icon(Icons.person, size: 70),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomContainer(height: 800, child: Text('Personal Details')),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
