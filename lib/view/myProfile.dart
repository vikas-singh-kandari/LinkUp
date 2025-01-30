import 'package:flutter/material.dart';
import 'package:linkup/widget/widget_home_Screen.dart';

import '../widget/myProfileWidget.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appbar(),
        backgroundColor: Colors.orange.shade100,
      ),
      body:SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileCard(),
              SizedBox(height: 20),
              IconContainerSwitcher(),
            ],
          ),
        ),
      ),
    );
  }
}
