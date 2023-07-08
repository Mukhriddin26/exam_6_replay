import 'package:easy_localization/easy_localization.dart';
import 'package:exam_6_replay/app.dart';
import 'package:exam_6_replay/service/local_service/local_service.dart';
import 'package:flutter/material.dart';

class LocaleApp extends StatelessWidget {
  const LocaleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales:FallbackLocale.supportLocale(),
      path:FallbackLocale.path ,
      fallbackLocale: FallbackLocale.french.locale,
      startLocale: FallbackLocale.russia.locale,
      child: const App(),
    );
  }
}





