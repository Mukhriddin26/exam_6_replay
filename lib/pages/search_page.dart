import 'package:exam_6_replay/service/constants/text_style.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {


  const SearchPage({super.key,});

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Text(
        "Search Page",
        style: AppTextStyles.oneStyle,
      ),
    );
  }
}