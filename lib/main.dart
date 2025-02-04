import 'package:flutter/material.dart';
import 'package:linkup/view/auth/LoginScreen.dart';
import 'package:linkup/widget/bottom%20baar.dart';  // Import your BottomBars widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: Loginscreen(),  // This will be your home widget with bottom navigation
    );
  }
}
