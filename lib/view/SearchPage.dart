import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkup/colors/color.dart';
import 'package:linkup/widget/widget_home_Screen.dart';

class SerachPage extends StatefulWidget {
  const SerachPage({super.key});

  @override
  State<SerachPage> createState() => _SerachPageState();
}

class _SerachPageState extends State<SerachPage> {
  TextEditingController searchController = TextEditingController();

  // Initialize the list of image paths

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orng,
        title: Row(
          children: [
            Text(
              "Search Linkup",
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.group_add_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: orng,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: AnimSearchBar(
                  width: 400,
                  textController: searchController,
                  onSuffixTap: () {
                    setState(() {
                      searchController.clear();
                    });
                  },
                  onSubmitted: (String name) {
                    // ========================== code for search ========================
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: img.length, // Use length of the image list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height: 60, // Adjusted the height to ensure it shows up
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              img.isNotEmpty && index < img.length
                                  ? img[index]
                                  :  "assets/image/profile.png", // Default image if index is out of bounds
                            ),
                            radius: 25,
                          ),
                          SizedBox(width: 10), // Added some spacing between items
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${names[index]}",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600, fontSize: 15),
                              ),
                              Text(
                                "${UserDomain[index]}",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                  color: orng,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_control)),
                          SizedBox(width: 14,),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
