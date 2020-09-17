import 'package:flutter/material.dart';
import 'package:launmax_lm_app/ui/screens/profile.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import 'home_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> _homeItems = <Widget>[
    HomePage(),
    ProfilePage()
   
  ];
   final tabs = [
    HomePage(),
    ProfilePage()
  ];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? HomePage.appBar() : null,
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(OMIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
           _selectedIndex = index;
          });
        },
      ),
    );
  }
}
