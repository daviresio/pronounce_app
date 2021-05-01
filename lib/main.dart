import 'dart:async';
import 'dart:isolate';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pedantic/pedantic.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/screens/dictionary/dictionary_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  //WEB dont has crashlytics support
  if (!kIsWeb) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    Isolate.current.addErrorListener(
      RawReceivePort((pair) async {
        final List<dynamic> errorAndStacktrace = pair;
        await FirebaseCrashlytics.instance.recordError(
          errorAndStacktrace.first,
          errorAndStacktrace.last,
        );
      }).sendPort,
    );

    unawaited(runZonedGuarded<Future<void>>(
      () async => runApp(MyApp()),
      FirebaseCrashlytics.instance.recordError,
    ));
  } else {
    runApp(MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MaterialApp(
        title: 'Pronounce as PRO',
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''),
          const Locale('pt', ''),
        ],
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 20,
              color: PronounceColors.textPrimaryColor,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
            ),
            headline2: TextStyle(
              fontSize: 20,
              color: PronounceColors.textPrimaryColor,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
            subtitle1: TextStyle(
              fontSize: 16,
              color: PronounceColors.textPrimaryColor,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
            overline: TextStyle(
              fontSize: 10,
              color: PronounceColors.textPrimaryColor,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w300,
              height: 1,
            ),
            bodyText1: TextStyle(
              fontSize: 14,
              color: PronounceColors.textPrimaryColor,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        home: DictionaryScreen(),
      ),
    );
  }
}
