import 'package:exam_6_replay/service/constants/text_style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {


  const ProfilePage({super.key,});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(
        "Profile Page",
        style: AppTextStyles.oneStyle,
      ),
    );
  }
}