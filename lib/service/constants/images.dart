import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

sealed class AppImages{
  static  SvgPicture home() {
    return SvgPicture.asset(
      "assets/images/dessert_img.svg",
      width: 353,
      height: 250,
      semanticsLabel: "category svg icons",
    );}
  static AssetImage dessert=const AssetImage("assets/images/dessert_img.png");
}