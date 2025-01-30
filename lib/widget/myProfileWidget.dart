import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkup/widget/widget_home_Screen.dart';

Widget ProfileCard(){
  return  Padding(
    padding: const EdgeInsets.all(14.0),
    child: Container(
      width:double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 2, // How much the shadow spreads
            blurRadius: 10,  // How soft the shadow appears
            offset: Offset(0, 4), // Position of the shadow (x, y)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                StroyImageBox(1),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Row(
                        children: [
                          Text("Vikas Singh", style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize:18, color: Colors.black),),
                          SizedBox(width: 70,),
                          InkWell(
                              onTap: (){

                              },
                              child: Icon(Icons.edit, color: Colors.black,))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0, bottom: 15),
                      child: Text("Software Developer",
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w800,fontSize: 13, color: Colors.grey.shade400),),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            onTap: (){},
                            child: CardFollowPost(12, "Post")),
                        CardFollowPost(132, "Follower"),
                        CardFollowPost(121, "Following"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18, top: 10, bottom: 13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("About he your nature @jyoti negi", style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w600),),
                  Text("@ Good in creative new things", style: GoogleFonts.poppins(fontSize: 12),),
                  Text("https://insta.com", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.blue),),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget CardFollowPost(int NoPost, String title){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Text("$NoPost",style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14),),
        Text("$title",style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 14),),
      ],
    ),
  );
}

// ==================================================for post================================
class IconContainerSwitcher extends StatefulWidget {
  @override
  _IconContainerSwitcherState createState() => _IconContainerSwitcherState();
}

class _IconContainerSwitcherState extends State<IconContainerSwitcher> {
  int selectedIndex = 0;

  final List<Widget> contentWidgets = [
    // Constrain the height of Postgrid
    SizedBox(
      height: 300,//
      width: double.infinity,
      // Set height for the grid
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Postgrid(),
      ),
    ),
    SizedBox(
      height: 400,
      width: double.infinity,
      child: HighlightGrid(),
    ),
    Container(
      height: 400,
      width: double.infinity,
      child: Center(
          child:Tagged()
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Column(
                children: [

                  Icon(Icons.grid_on_rounded,
                      size: 23,
                      color:
                      selectedIndex == 0 ? Colors.orange : Colors.grey),
                  Text(
                    "Post",
                    style: TextStyle(
                        color: selectedIndex == 0
                            ? Colors.black
                            : Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: Column(
                children: [
                  Icon(Icons.favorite,
                      size: 23,
                      color: selectedIndex == 1 ? Colors.red : Colors.grey),
                  Text("Highlight",
                      style: TextStyle(
                          color: selectedIndex == 1
                              ? Colors.black
                              : Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: Column(
                children: [
                  Icon(Icons.person_pin,
                      size: 23,
                      color: selectedIndex == 2 ? Colors.black : Colors.grey),
                  Text("Tagged",
                      style: TextStyle(
                          color: selectedIndex == 2
                              ? Colors.black
                              : Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 15
                      )),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 28.0, right: 28),
          child: Divider(
            color: Colors.grey,
            thickness: 2,
          ),
        ),
        contentWidgets[selectedIndex], // Display selected container
      ],
    );
  }
}

Widget Postgrid() {
  return GridView.builder(
    padding: const EdgeInsets.all(8.0),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3, // Number of items in one row
      crossAxisSpacing: 7.0, // Horizontal spacing between items
      mainAxisSpacing: 7.0, // Vertical spacing between items
      childAspectRatio: 1.0, // Aspect ratio of each item
    ),
    itemCount: img.length,
    itemBuilder: (context, index) {
      return Stack(
          children: [
            GestureDetector(
              onTap: (){

              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 1, // How much the shadow spreads
                      blurRadius: 4,  // How soft the shadow appears
                      offset: Offset(0, 4), // Position of the shadow (x, y)
                    ),
                  ],
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(img[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            VewsComentNo(121, 34),
          ],
      );
    },
  );
}

Widget VewsComentNo(int vewsNo, commentNo){
  return   Padding(
    padding: const EdgeInsets.only(top: 85.0, left: 10),
    child: Row(
      children: [
        Icon(Icons.remove_red_eye_outlined, size: 13,),
        Text("${vewsNo}", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 10),),
        SizedBox(width: 35,),
        Icon(Icons.message_rounded, size: 10,),
        Text("${commentNo}", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 10),),
      ],
    ),
  );
}
Widget HighlightGrid() {
  return Expanded(
    child: GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Number of items in one row
        crossAxisSpacing: 8.0, // Horizontal spacing between items
        mainAxisSpacing: 8.0, // Vertical spacing between items
        childAspectRatio: 1.0, // Aspect ratio of each item
      ),
      itemCount: img.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            GestureDetector(
              onTap: () {
                // Your onTap code here
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      spreadRadius: 1, // How much the shadow spreads
                      blurRadius: 4,  // How soft the shadow appears
                      offset: Offset(0, 4), // Position of the shadow (x, y)
                    ),
                  ],
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(img[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            VewsComentNo(124, 45),
          ],
        );
      },
    ),
  );
}

Widget Tagged(){
  return Container(
    width: 300,
    height: 300,
    child: Column(
      children: [
        Icon(Icons.add,size: 50,color: Colors.grey,),
        TextButton(onPressed: (){}, child:Text("No yet tagged", style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 30),))
      ],
    ),
  );
}