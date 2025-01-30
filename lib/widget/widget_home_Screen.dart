
import 'package:animated_card/animated_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:typewritertext/typewritertext.dart';

import '../colors/color.dart';
import '../view/profile.dart';


List<String> img = <String>[
  "assets/image/profile.png",
  "assets/image/img.png",
  "assets/image/img_1.png",
  "assets/image/img.png",
  "assets/image/profile.png",
  "assets/image/profile.png",
  "assets/image/profile.png",
];

List<String> names = <String>[
  "your Name",
  "anisha",
  "Neha",
  "Jhon Sing",
  "Neha",
  "Aix",
  "itz_raj",
];

List<String> UserDomain = <String>[
  "Software developer",
  "video editor",
  "content creator",
  "Entrepreneur in word",
  "reel lover",
  "Crafting new things",
  "Hotel industrious",
];

// ==================================================================app Bar=========================
Widget appbar(){
  return Row(
    children: [
      TextButton(onPressed: (){

      }, child: Text("My Network",style:TextStyle(color: black))),
      IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down)),
      Spacer(),
      Card(
        color: Colors.white,
        child: IconButton(onPressed: (){

        }, icon: Icon(Icons.filter_list_sharp)),
      ),
      Card(
        color: orng,
        child: IconButton(onPressed: (){

        }, icon: Icon(Icons.add)),
      )
    ],
  );
}


// =============================================================Story Cont ============================
Widget StoryCont(){
  return  Container(
    width: double.infinity,
    height: 270,
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            color: yellow,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(45),
              bottomRight: Radius.circular(45),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            "Timeline",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 34.0, left: 10),
          child: Text(
            "Friend",
            style: GoogleFonts.roboto(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Container(
            width: double.infinity,
            height: 185,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:names.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UserProfile()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        StroyImageBox(index),
                        SizedBox(height: 8), // Space between image and name
                        Text(
                          names[index], // Dynamically use name from the list
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center, // Center the name below the image
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ),
  );
}

// ====================================================Story Box Round==========================
Widget StroyImageBox(int index){
  return Container(
    width: 80,
    height: 140, // Fixed height for the image
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      image: DecorationImage(
        image: AssetImage(img[index]), // Dynamically use image path
        fit: BoxFit.cover,
      ),
      border: Border.all(color: Colors.white, width: 2.5),
    ),
  );
}
Widget PostCont(){
  return ListView.builder(
    shrinkWrap: true, // Ensures the ListView fits inside the SingleChildScrollView
    physics: NeverScrollableScrollPhysics(), // Disables scrolling inside the ListView
    itemCount: img.length,
    itemBuilder: (context, index) {
      return AnimatedCard(
        direction: AnimatedCardDirection.bottom, // Initial animation direction
        initDelay: Duration(milliseconds: 0), // Delay to initial animation
        duration: Duration(milliseconds: 800), // Initial animation duration
        onRemove: () => img.removeAt(index), // Implement this action to activate dismiss
        curve: Curves.bounceInOut, // Animation curve
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Card(
            color: Colors.white,
            elevation: 5,
            child: ListTile(
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 44,
                        height: 45,
                        decoration: BoxDecoration(
                          border: Border.all(color: orng, width: 1),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(img[index]), // Dynamically use image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 18,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${names[index]}",
                            style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 15),
                          ),
                         Text("${UserDomain[index]}", style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 13, color: orng)),
                        ],
                      ),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_control_outlined)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(
                    height: 0.2,
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                    child: Text("#So Who am i", style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: TypeWriter.text('" '+"In this word of virtual connection its so."+ '"' + "  ",
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600,color: Colors.grey, fontSize: 15),
                      duration: Duration(milliseconds: 10),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined, color: orng,)),
                      Text(
                        "At Goa city",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: orng,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 25,
                        width: 1.5,
                        color: orng,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "10 Minute ago",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: orng,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_border, color: Colors.red,),
                      Text("11", style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
                      SizedBox(width: 20,),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.comment, color: Colors.grey,)),
                      Text("22", style: GoogleFonts.poppins(fontWeight: FontWeight.w500),),
                      SizedBox(width: 20,),
                      Text("Liked by", style: GoogleFonts.poppins(color: Colors.grey, fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(width: 10,),
                      Stack(
                        children: [
                           LikedByCont(1),
                           Padding(
                             padding: const EdgeInsets.only(left: 15.0),
                             child: LikedByCont(2),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 30.0),
                             child: LikedByCont(3),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 45.0),
                             child: LikedByCont(4),
                           ),
                        ],
                      ),
                    ],
                  ),
                  CircleImage(index),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}


Widget LikedByCont(int index){
  return Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white, width: 2),
      image: DecorationImage(
        image: AssetImage(img[index],),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget CircleImage(int image){
  return Container(
    width: double.infinity,
    height: 50,
    child: Row(
      children: [
        GestureDetector(
          onTap: (){

          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 1),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(img[image]), // Dynamically use image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: 10,),
        Container(
          width:240,
          height: 60,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(24)
          ),
          child: TextFormFields("Add a comment", Icon(Icons.send)),
        )
      ],
    ),
  );
}

Widget TextFormFields(String HintText, Icon icon){
  return TextFormField(
    decoration: InputDecoration(
        border: InputBorder.none,
        hintText: HintText,
        hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        suffixIcon:IconButton(onPressed: (){}, icon: icon)
    ),
  );
}