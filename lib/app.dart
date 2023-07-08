import 'package:easy_localization/easy_localization.dart';
import 'package:exam_6_replay/pages/main_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme:  const AppBarTheme(
          iconTheme: IconThemeData(size: 32,),

        )

      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      home: const MainPage(),
    );
  }
}
