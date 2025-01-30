import 'package:flutter/material.dart';

import '../widget/ProfileWidget.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body:SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 60),
              ProfileCard(),
              ButtonFollowEdit(),
              SizedBox(height: 20),
              IconContainerSwitcher(),
            ],
          ),
        ),
      ),
    );
  }
}
