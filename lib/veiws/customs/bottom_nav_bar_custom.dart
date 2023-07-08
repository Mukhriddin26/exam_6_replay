import 'package:exam_6_replay/service/constants/colors.dart';
import 'package:exam_6_replay/service/constants/icons.dart';
import 'package:exam_6_replay/veiws/companets/bottom_nav_item_comp.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNaviItemComp.bottomNavItem(AppIcons.home(AppColors.grey), "Home"),
        BottomNaviItemComp.bottomNavItem(AppIcons.profile, "Profile"),
        BottomNaviItemComp.bottomNavItem(AppIcons.search, "search"),
      ],
    );
  }
}
