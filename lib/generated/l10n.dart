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

  /// `Coming Soon...`
  String get tips_comeSoon {
    return Intl.message(
      'Coming Soon...',
      name: 'tips_comeSoon',
      desc: '',
      args: [],
    );
  }

  /// `The address cannot be empty.`
  String get tips_emptyAddress {
    return Intl.message(
      'The address cannot be empty.',
      name: 'tips_emptyAddress',
      desc: '',
      args: [],
    );
  }

  /// `Invalid address.`
  String get tips_invalidAddress {
    return Intl.message(
      'Invalid address.',
      name: 'tips_invalidAddress',
      desc: '',
      args: [],
    );
  }

  /// `The amount cannot be empty.`
  String get tips_emptyAmount {
    return Intl.message(
      'The amount cannot be empty.',
      name: 'tips_emptyAmount',
      desc: '',
      args: [],
    );
  }

  /// `The amount must be greater than 0.`
  String get tips_zeroAmount {
    return Intl.message(
      'The amount must be greater than 0.',
      name: 'tips_zeroAmount',
      desc: '',
      args: [],
    );
  }

  /// `The amount cannot exceed the maximum.`
  String get tips_maxAmount {
    return Intl.message(
      'The amount cannot exceed the maximum.',
      name: 'tips_maxAmount',
      desc: '',
      args: [],
    );
  }

  /// `The from amount cannot be empty.`
  String get tips_emptyAmount1 {
    return Intl.message(
      'The from amount cannot be empty.',
      name: 'tips_emptyAmount1',
      desc: '',
      args: [],
    );
  }

  /// `The from amount must be greater than 0.`
  String get tips_zeroAmount1 {
    return Intl.message(
      'The from amount must be greater than 0.',
      name: 'tips_zeroAmount1',
      desc: '',
      args: [],
    );
  }

  /// `The from amount cannot exceed the maximum.`
  String get tips_maxAmount1 {
    return Intl.message(
      'The from amount cannot exceed the maximum.',
      name: 'tips_maxAmount1',
      desc: '',
      args: [],
    );
  }

  /// `The to amount cannot be empty.`
  String get tips_emptyAmount2 {
    return Intl.message(
      'The to amount cannot be empty.',
      name: 'tips_emptyAmount2',
      desc: '',
      args: [],
    );
  }

  /// `The to amount must be greater than 0.`
  String get tips_zeroAmount2 {
    return Intl.message(
      'The to amount must be greater than 0.',
      name: 'tips_zeroAmount2',
      desc: '',
      args: [],
    );
  }

  /// `Please create an ethereum address.`
  String get tips_createEthAddress {
    return Intl.message(
      'Please create an ethereum address.',
      name: 'tips_createEthAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please wait for a while to see the balance.`
  String get tips_waitingBalance {
    return Intl.message(
      'Please wait for a while to see the balance.',
      name: 'tips_waitingBalance',
      desc: '',
      args: [],
    );
  }

  /// `Address is on your clipboard.`
  String get tips_addressIsOnClipboard {
    return Intl.message(
      'Address is on your clipboard.',
      name: 'tips_addressIsOnClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Card NO is on your clipboard.`
  String get tips_cardNoIsOnClipboard {
    return Intl.message(
      'Card NO is on your clipboard.',
      name: 'tips_cardNoIsOnClipboard',
      desc: '',
      args: [],
    );
  }

  /// `WIF is on your clipboard.`
  String get tips_wifIsOnClipboard {
    return Intl.message(
      'WIF is on your clipboard.',
      name: 'tips_wifIsOnClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Empty WIF.`
  String get tips_emptyWif {
    return Intl.message(
      'Empty WIF.',
      name: 'tips_emptyWif',
      desc: '',
      args: [],
    );
  }

  /// `The password cannot be empty.`
  String get tips_emptyPassword {
    return Intl.message(
      'The password cannot be empty.',
      name: 'tips_emptyPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please wait.`
  String get tips_waiting {
    return Intl.message(
      'Please wait.',
      name: 'tips_waiting',
      desc: '',
      args: [],
    );
  }

  /// `Please get verification code first.`
  String get tips_getVerifyCode {
    return Intl.message(
      'Please get verification code first.',
      name: 'tips_getVerifyCode',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the correct password.`
  String get tips_wrongPass {
    return Intl.message(
      'Please enter the correct password.',
      name: 'tips_wrongPass',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password and confirmation password.`
  String get tips_wrongPassMatch {
    return Intl.message(
      'Wrong password and confirmation password.',
      name: 'tips_wrongPassMatch',
      desc: '',
      args: [],
    );
  }

  /// `Password updated.`
  String get tips_updatedPassword {
    return Intl.message(
      'Password updated.',
      name: 'tips_updatedPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please select the date of birth.`
  String get tips_selectDateOfBirth {
    return Intl.message(
      'Please select the date of birth.',
      name: 'tips_selectDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Please select the country.`
  String get tips_selectCountry {
    return Intl.message(
      'Please select the country.',
      name: 'tips_selectCountry',
      desc: '',
      args: [],
    );
  }

  /// `You need KYC first.`
  String get tips_kycNeed {
    return Intl.message(
      'You need KYC first.',
      name: 'tips_kycNeed',
      desc: '',
      args: [],
    );
  }

  /// `KYC is pending.`
  String get tips_kycPending {
    return Intl.message(
      'KYC is pending.',
      name: 'tips_kycPending',
      desc: '',
      args: [],
    );
  }

  /// `KYC has been passed and please check the card page after a while.`
  String get tips_kycPassed {
    return Intl.message(
      'KYC has been passed and please check the card page after a while.',
      name: 'tips_kycPassed',
      desc: '',
      args: [],
    );
  }

  /// `KYC is rejected and please do it again.`
  String get tips_kycRejected {
    return Intl.message(
      'KYC is rejected and please do it again.',
      name: 'tips_kycRejected',
      desc: '',
      args: [],
    );
  }

  /// `Please input the social Id.`
  String get tips_checkInputSocialId {
    return Intl.message(
      'Please input the social Id.',
      name: 'tips_checkInputSocialId',
      desc: '',
      args: [],
    );
  }

  /// `The card number cannot be empty.`
  String get tips_emptyCardNumber {
    return Intl.message(
      'The card number cannot be empty.',
      name: 'tips_emptyCardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please apply for a new card first.`
  String get tips_applyCardFirst {
    return Intl.message(
      'Please apply for a new card first.',
      name: 'tips_applyCardFirst',
      desc: '',
      args: [],
    );
  }

  /// `Please wait for manual review.`
  String get tips_waitForReview {
    return Intl.message(
      'Please wait for manual review.',
      name: 'tips_waitForReview',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw successful.`
  String get tips_successWithdraw {
    return Intl.message(
      'Withdraw successful.',
      name: 'tips_successWithdraw',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw failed, please try again later.`
  String get tips_failWithdraw {
    return Intl.message(
      'Withdraw failed, please try again later.',
      name: 'tips_failWithdraw',
      desc: '',
      args: [],
    );
  }

  /// `Deposit successful.`
  String get tips_successDeposit {
    return Intl.message(
      'Deposit successful.',
      name: 'tips_successDeposit',
      desc: '',
      args: [],
    );
  }

  /// `Deposit failed, please try again later.`
  String get tips_failDeposit {
    return Intl.message(
      'Deposit failed, please try again later.',
      name: 'tips_failDeposit',
      desc: '',
      args: [],
    );
  }

  /// `Buy NFT Successfully.`
  String get tips_buyNftSuccess {
    return Intl.message(
      'Buy NFT Successfully.',
      name: 'tips_buyNftSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Please create a crypto wallet first.`
  String get tips_createWallet {
    return Intl.message(
      'Please create a crypto wallet first.',
      name: 'tips_createWallet',
      desc: '',
      args: [],
    );
  }

  /// `There is a fee of $5.00 to apply for a virtual card.`
  String get tips_needFiveDollarFee {
    return Intl.message(
      'There is a fee of \$5.00 to apply for a virtual card.',
      name: 'tips_needFiveDollarFee',
      desc: '',
      args: [],
    );
  }

  /// `Invitation Code is on your clipboard.`
  String get tips_codeIsOnClipboard {
    return Intl.message(
      'Invitation Code is on your clipboard.',
      name: 'tips_codeIsOnClipboard',
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
