import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pekin_shop_ui/bottom/Likes_page.dart';
import 'package:pekin_shop_ui/bottom/Search_page.dart';
import 'package:pekin_shop_ui/bottom/Setting_page.dart';

import '../bottom/Home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    home(),
    Likes_page(),
    Search_page(),
    Setting_page(),
  ];

  int currentIndex = 0;
  void onTap (int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: Container(
       color: Colors.black,
       child: Padding(
         padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 2),
         child: GNav(
           backgroundColor: Colors.black,
           color: Colors.white,
           activeColor: Colors.white,
           tabBackgroundColor: Colors.grey.shade800,
           gap: 8,
           onTabChange: (value) => currentIndex,
           padding: EdgeInsets.all(16),
           tabs:const [
             GButton(
               icon: Icons.home,
               text: "Home",
             ),
             GButton (
               icon: Icons.favorite_border,
               text: "Likes",
             ),
             GButton(
               icon: Icons.search,
               text: "Search",
             ),
             GButton (
               icon: Icons.settings,
               text: "Settings",
             ),
           ],
         ),
       ),
     ),
    );
  }
}
