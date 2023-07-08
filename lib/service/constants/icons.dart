import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

sealed class AppIcons {
  static final SvgPicture profile = SvgPicture.asset(
    "assets/ic_images/svg_profile.svg",
    width: 32,
    height: 32,
  );

  static Icon back(Color color) {
    return Icon(CupertinoIcons.back, size: 32, color: color);
  }
  // static Icon home(Color color) {
  //   return Icon(CupertinoIcons.house, size: 32, color: color);
  // }
  static Icon menu(Color color) {
    return Icon(Icons.menu, size: 32, color: color);
  }

  static  SvgPicture home(Color color) {
    return SvgPicture.asset(
    "assets/ic_images/svg_home.svg",
    width: 32,
    height: 32,
    semanticsLabel: "category svg icons",
      color: color,
  );}
  static final SvgPicture search = SvgPicture.asset(
    "assets/ic_images/svg_search.svg",
    width: 32,
    height: 32,
    semanticsLabel: "category svg icons",
  );
}
