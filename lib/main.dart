import 'package:awallet/logins/login.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';
import 'grpc_services/common_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    LocalStorage.initSP().then((value) {
      if (LocalStorage.get("currLangName") == null) {
        LocalStorage.save("currLangName", GlobalParams.currLangName);
      } else {
        GlobalParams.currLangName = LocalStorage.get("currLangName");
      }
      resetServicesFromChangeLanguage();
      setState(() {});
    });
    GlobalParams.eventBus.on().listen((event) {
      if (event == "changeLang") {
        GlobalParams.currLangName = LocalStorage.get("currLangName");
        resetServicesFromChangeLanguage();
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Locale? locale;
    if (LocalStorage.get("currLangName") != null) {
      if (LocalStorage.get("currLangName") == "zh_TW") {
        locale = const Locale('zh', 'TW');
      } else {
        locale = const Locale("en", "US");
      }
    }
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: locale,
      localeResolutionCallback:
          (Locale? locale, Iterable<Locale> supportedLocales) {
        if (locale?.languageCode != "en") {
          GlobalParams.currLangName = "zh_TW";
          return const Locale('zh', 'TW');
        }
        return const Locale('en', 'US');
      },
      title: 'AWallet',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
