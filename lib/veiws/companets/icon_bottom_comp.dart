 import 'package:flutter/cupertino.dart';

class IconBottomComp{
  static  CupertinoButton iconBottom(Widget widget, VoidCallback function){
    return CupertinoButton(onPressed:function , child: widget);
  }
 }