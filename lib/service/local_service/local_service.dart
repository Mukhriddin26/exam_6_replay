import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

enum FallbackLocale {
  russia(Locale('ru', 'RU')),
  english(Locale('en', 'US')),
  french(Locale('fr', 'FR'));

  const FallbackLocale(this.locale);

  final Locale locale;

  static List<Locale> supportLocale() {
    return values.map((e) => e.locale).toList();
  }
  static const String path='assets/translations';
  static void func (BuildContext context, Locale locale){
    context.setLocale(
      locale,
    );
    debugPrint(context.locale.toString());
  }
}