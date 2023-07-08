import 'package:easy_localization/easy_localization.dart';
import 'package:exam_6_replay/locale_app.dart';
import 'package:flutter/material.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await EasyLocalization.ensureInitialized();
   runApp(
      const LocaleApp(),
   );
}
