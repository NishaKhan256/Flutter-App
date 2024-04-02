import 'package:flutter/material.dart';
import 'package:projectapp/Screens/destination_widget.dart';
import 'package:projectapp/Screens/favorite_widget.dart';
import 'package:projectapp/Screens/location_widget.dart';
import 'package:projectapp/Screens/explore_widget.dart';
import 'package:projectapp/Screens/profile_widget.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
   var currentindex = 0;
  var Screens=[
   const DestinationScreen(),
   const LocationScreen(),
   const ExploreScreen(),
   FavoriteScreen(),
   const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentindex],
      
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (v){
          currentindex=v;
          setState(() {
            
          });
        },
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.blueGrey),
        items: const [
       BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.explore),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: ''),
       BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded),label: ''),
      ]),
    );
  }
}