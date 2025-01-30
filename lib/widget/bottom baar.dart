import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../view/SearchPage.dart';
import '../view/myProfile.dart';
import '../view/profile.dart';
import '../view/realHome.dart';

class BottomBars extends StatefulWidget {
  const BottomBars({super.key});

  @override
  State<BottomBars> createState() => _BottomBarsState();
}

class _BottomBarsState extends State<BottomBars> {
  int _currentIndex = 0; // Track the selected tab

  final List<Widget> _pages = [
    Realhome(),
    SerachPage(),
    UserProfile(),
    MyProfile(),// Another page (replace as needed)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.grey.shade100,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() {
          _currentIndex = i; // Update current tab
        }),
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Colors.purple,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Favorites"),
            selectedColor: Colors.red,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person_outline_rounded),
            title: Text("Profile"),
            selectedColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
