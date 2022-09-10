import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:thermo_ieee_app/services/chat/pages/chats.dart';
import 'package:thermo_ieee_app/services/main/pages/main_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thermo App',
      theme: ThemeData(fontFamily: "default"),
      // to tell the app what the language should support
      supportedLocales: const [Locale("en"), Locale("ar")],

      // to tell the app what the components should follow the determined language
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // this is a callback, it's executed when the user open the app or change the localaization of the mobile
      // what is its jop?
      // : it cheks if what is the current language of the mobile and return it for the app to follow it
      // : it cheks too if the user specified any language he need even if it's not same as the mobile language is
      localeResolutionCallback: (currentLang, supportedLangs) {
        // String? savedLgnCode = pref!.getString("lgnCode");
        if (currentLang != null) {
          for (Locale locale in supportedLangs) {
            if (locale.languageCode == currentLang.languageCode) return locale;
          }
        }
        return supportedLangs.first;
      },
      home: MainPage(),
    );
  }
}

