import 'package:exam_6_replay/service/constants/text_style.dart';
import 'package:flutter/material.dart';

sealed class Strings {

  Strings._();

  static Text strVegan= Text("str_vegan",style: AppTextStyles.light52,);
  static Text strLocalDatabase= Text("str_protain",style: AppTextStyles.light52,);
  static Text strGram= Text("str_gram",style: AppTextStyles.medium14,);
  static Text strPrice= Text("str_price",style: AppTextStyles.semiBold24,);
  static Text strAbout= Text("str_about",style: AppTextStyles.medium14,);
  static Text strEVegan= Text("str_eVegan",style: AppTextStyles.regular14,);
  static Text strHome= Text("str_home",style: AppTextStyles.regular14,);
  static Text strProfile= Text("str_profile",style: AppTextStyles.regular14,);
  static Text strSearch= Text("str_search",style: AppTextStyles.regular14,);
  static Text strEnglish= Text("str_english",style: AppTextStyles.regular14black,);
  static Text strRussia= Text("str_russia",style: AppTextStyles.regular14black,);
  static Text strFrench= Text("str_french",style: AppTextStyles.regular14black,);


}



