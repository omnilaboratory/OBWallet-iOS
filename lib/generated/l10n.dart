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

  /// `Email`
  String get common_Email {
    return Intl.message(
      'Email',
      name: 'common_Email',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get common_VerifyCode {
    return Intl.message(
      'Verify Code',
      name: 'common_VerifyCode',
      desc: '',
      args: [],
    );
  }

  /// `Weak`
  String get common_CodeLeve1 {
    return Intl.message(
      'Weak',
      name: 'common_CodeLeve1',
      desc: '',
      args: [],
    );
  }

  /// `Normal`
  String get common_CodeLeve2 {
    return Intl.message(
      'Normal',
      name: 'common_CodeLeve2',
      desc: '',
      args: [],
    );
  }

  /// `Strong`
  String get common_CodeLeve3 {
    return Intl.message(
      'Strong',
      name: 'common_CodeLeve3',
      desc: '',
      args: [],
    );
  }

  /// `Get Code`
  String get common_GetCode {
    return Intl.message(
      'Get Code',
      name: 'common_GetCode',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get common_NewPsw {
    return Intl.message(
      'New Password',
      name: 'common_NewPsw',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get common_ConfirmNewPsw {
    return Intl.message(
      'Confirm New Password',
      name: 'common_ConfirmNewPsw',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get common_Back {
    return Intl.message(
      'Back',
      name: 'common_Back',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get common_Done {
    return Intl.message(
      'Done',
      name: 'common_Done',
      desc: '',
      args: [],
    );
  }

  /// `Wrong `
  String get common_Wrong {
    return Intl.message(
      'Wrong ',
      name: 'common_Wrong',
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

  /// `Forgot Password`
  String get forgetPsw_Title {
    return Intl.message(
      'Forgot Password',
      name: 'forgetPsw_Title',
      desc: '',
      args: [],
    );
  }

  /// `Wrong email`
  String get tips_WrongEmail {
    return Intl.message(
      'Wrong email',
      name: 'tips_WrongEmail',
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
