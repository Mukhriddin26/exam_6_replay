
import 'package:flutter/material.dart';

class BottomNaviItemComp{
  static BottomNavigationBarItem bottomNavItem (Widget widget,String str){
    return BottomNavigationBarItem(
      icon: widget,
      label: str,
    );
  }
}