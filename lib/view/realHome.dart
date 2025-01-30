
import 'package:flutter/material.dart';
import 'package:linkup/colors/color.dart';
import '../widget/widget_home_Screen.dart';

class Realhome extends StatefulWidget {
  const Realhome({super.key});

  @override
  State<Realhome> createState() => _RealhomeState();
}

class _RealhomeState extends State<Realhome>  with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: yellow,
        title: appbar(),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // Top Section with Stories====================================Story Cont==============
              StoryCont(),
              // ===========================================================post Container==============
              PostCont(),
            ],
          ),
        ),
      ),
    );
  }
}
