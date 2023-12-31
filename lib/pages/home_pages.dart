import 'package:easy_localization/easy_localization.dart';
import 'package:exam_6_replay/service/constants/icons.dart';
import 'package:exam_6_replay/service/constants/images.dart';
import 'package:exam_6_replay/service/constants/strings.dart';
import 'package:exam_6_replay/service/constants/text_style.dart';
import 'package:exam_6_replay/service/local_service/local_service.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../service/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int num;
  late double price;

  @override
  void initState() {
    num = 0;
    price=num*1.99;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppIcons.back(AppColors.white),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                FallbackLocale.func(context, FallbackLocale.english.locale);
              },
              color: AppColors.white,
              minWidth: 60,
              child: Strings.strEnglish.tr(),
            ),
            MaterialButton(
              onPressed: () {
                FallbackLocale.func(context, FallbackLocale.french.locale);
              },
              color: AppColors.white,
              minWidth: 60,
              child: Strings.strFrench.tr(),
            ),
            MaterialButton(
              onPressed: () {
                FallbackLocale.func(context, FallbackLocale.russia.locale);
              },
              color: AppColors.white,
              minWidth: 60,
              child: Strings.strRussia.tr(),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 353,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AppImages.dessert, fit: BoxFit.cover)),
                ),
              ],
            ),
            Strings.strVegan.tr(),
            const SizedBox(
              height: 10,
            ),
            Strings.strLocalDatabase.tr(),
            const SizedBox(
              height: 10,
            ),
            Strings.strGram.tr(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 132,
                  height: 44,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: AppColors.grey),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RawMaterialButton(
                          constraints:
                              const BoxConstraints(minWidth: 20, minHeight: 20),
                          onPressed: () {
                            setState(() {
                              num -= 1;
                             if(num<0){
                                num = 0;
                              }
                              price=num*1.99;
                            });
                          },
                          child: const Icon(
                            CupertinoIcons.minus,
                            size: 18,
                          )),
                      Text(
                        "$num",
                        style: AppTextStyles.semiBold18,
                      ),
                      RawMaterialButton(
                          constraints:
                              const BoxConstraints(minWidth: 20, minHeight: 20),
                          onPressed: () {
                            setState(() {
                              num += 1;
                              price = num * 1.99;
                            });
                          },
                          child: const Icon(
                            CupertinoIcons.add,
                            size: 18,
                          )),
                    ],
                  ),
                ),
                Text("\$ $price "),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Strings.strEVegan.tr(),
          ],
        ),
      ),
    );
  }
}
