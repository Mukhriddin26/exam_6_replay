import 'package:exam_6_replay/pages/home_pages.dart';
import 'package:exam_6_replay/pages/profile_page.dart';
import 'package:exam_6_replay/pages/search_page.dart';
import 'package:flutter/material.dart';

import '../veiws/customs/bottom_nav_bar_custom.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:pagesList[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

const List<Widget> pagesList=[
   HomePage(),
   SearchPage(),
   ProfilePage(),
];

