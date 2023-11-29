// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Password`
  String get common_Password {
    return Intl.message(
      'Password',
      name: 'common_Password',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get common_Username {
    return Intl.message(
      'Username',
      name: 'common_Username',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get login_Welcome {
    return Intl.message(
      'Welcome',
      name: 'login_Welcome',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Description`
  String get login_Desc {
    return Intl.message(
      'Wallet Description',
      name: 'login_Desc',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get login_SignIn {
    return Intl.message(
      'Sign In',
      name: 'login_SignIn',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get login_ForgotPsw {
    return Intl.message(
      'Forgot Password?',
      name: 'login_ForgotPsw',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get login_SignUp {
    return Intl.message(
      'Sign Up',
      name: 'login_SignUp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
