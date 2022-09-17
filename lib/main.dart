import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:thermo_ieee_app/config/providers.dart';
import 'package:thermo_ieee_app/navigation/routes.dart';
import 'package:thermo_ieee_app/services/authentication/screens/register_screen.dart';
import 'package:thermo_ieee_app/services/home/pages/home_page.dart';
import 'package:thermo_ieee_app/services/main/pages/main_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:thermo_ieee_app/services/authentication/screens/login_screen.dart';
import 'package:thermo_ieee_app/source/shared_helper.dart';
import 'firebase_options.dart';
import 'navigation/navigator.dart';

void main() async  {
  SharedHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp( options: DefaultFirebaseOptions.currentPlatform );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: ProviderList.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Thermo App',
        theme: ThemeData(fontFamily: "default"),
        initialRoute: Routes.login,

        navigatorKey: CustomNavigator.navigatorState,
        navigatorObservers: [CustomNavigator.routeObserver],
        scaffoldMessengerKey: CustomNavigator.scaffoldState,
        onGenerateRoute: CustomNavigator.onCreateRoute,

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
              if (locale.languageCode == currentLang.languageCode)
                return locale;
            }
          }
          return supportedLangs.first;
        },
        home: const MainPage(),
        // initialRoute: "/",
      ),
    );
  }
}
