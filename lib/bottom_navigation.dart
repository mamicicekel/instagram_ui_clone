import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui_clone/screens/home/home.dart';
import 'package:instagram_ui_clone/screens/my_profile/my_profile.dart';
import 'package:instagram_ui_clone/screens/reels/reels.dart';
import 'package:instagram_ui_clone/screens/search/search.dart';
import 'package:instagram_ui_clone/screens/shop/shop.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex=0;

  final List<Widget> _widget=<Widget> [
    const HomeScreen(),
    const SearchScreen(),
    const ReelsScreen(),
    const ShopScreen(),
    const MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget.elementAt(_selectedIndex),
       bottomNavigationBar: BottomNavigationBar(
         backgroundColor: _selectedIndex==2 ? Colors.black : Colors.white,
         currentIndex: _selectedIndex,
         elevation: 5,
         iconSize: 30,
         onTap: (int index) {
           setState(() {
             _selectedIndex=index;
           });
         },
         showSelectedLabels: false,
         showUnselectedLabels: false,
         selectedItemColor: Colors.black,
         type: BottomNavigationBarType.fixed,
         unselectedItemColor: Colors.black45,
         items:  <BottomNavigationBarItem>[
           BottomNavigationBarItem(
             icon: _selectedIndex==0
                 ?
             SvgPicture.asset(
               "assets/icons/home-selected.svg",
               height: 24,
             )
                 :
             SvgPicture.asset(
               "assets/icons/home.svg",
               height: 24,
               color: _selectedIndex==2 ? Colors.white : Colors.black,
             ),
             label: "Home",
           ),
           BottomNavigationBarItem(
             icon: _selectedIndex==1
                 ?
             SvgPicture.asset(
               "assets/icons/search-selected.svg",
               height: 24,
             )
                 :
             SvgPicture.asset(
               "assets/icons/search.svg",
               height: 24,
               color: _selectedIndex==2 ? Colors.white : Colors.black,
             ),
             label: "Search",
           ),
           BottomNavigationBarItem(
             icon: _selectedIndex==2
                 ?
             SvgPicture.asset(
               "assets/icons/reels-selected.svg",
               height: 24,
             )
                 :
             SvgPicture.asset(
               "assets/icons/reels.svg",
               height: 24,
               color: Colors.black,
             ),
             label: "Store",
           ),
           BottomNavigationBarItem(
             icon:SvgPicture.asset(
               "assets/icons/shop.svg",
               height: 24,
               color: _selectedIndex==2 ? Colors.white : Colors.black,
             ),
             label: "Store",
           ),
           BottomNavigationBarItem(
             icon: Stack(
               alignment: Alignment.center,
               children: <Widget> [
                 Visibility(
                   visible: _selectedIndex==4 ? true : false,
                   child: CircleAvatar(
                     radius: 13.5,
                     backgroundColor: Colors.black,
                   ),
                 ),
                 CircleAvatar(
                   radius: 12,
                   backgroundImage:AssetImage("assets/home/profilephotos/mamicicekel.png"),
                 ),
               ],
             ),
             label: "Profile",
          ),
        ],
      ),
    );
  }
}
