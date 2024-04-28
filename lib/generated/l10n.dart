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

  /// `NEXT`
  String get common_Next {
    return Intl.message(
      'NEXT',
      name: 'common_Next',
      desc: '',
      args: [],
    );
  }

  /// `CANCEL`
  String get common_Cancel {
    return Intl.message(
      'CANCEL',
      name: 'common_Cancel',
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

  /// `Ok`
  String get common_Ok {
    return Intl.message(
      'Ok',
      name: 'common_Ok',
      desc: '',
      args: [],
    );
  }

  /// `confirm`
  String get common_Confirm {
    return Intl.message(
      'confirm',
      name: 'common_Confirm',
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

  /// `No Data`
  String get common_NoData {
    return Intl.message(
      'No Data',
      name: 'common_NoData',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get common_Deposit {
    return Intl.message(
      'Deposit',
      name: 'common_Deposit',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get common_Withdraw {
    return Intl.message(
      'Withdraw',
      name: 'common_Withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Exchange`
  String get common_Exchange {
    return Intl.message(
      'Exchange',
      name: 'common_Exchange',
      desc: '',
      args: [],
    );
  }

  /// `Recharge to Card`
  String get common_recharge2card {
    return Intl.message(
      'Recharge to Card',
      name: 'common_recharge2card',
      desc: '',
      args: [],
    );
  }

  /// `Balance: `
  String get activity_balance {
    return Intl.message(
      'Balance: ',
      name: 'activity_balance',
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

  /// ``
  String get login_Desc {
    return Intl.message(
      '',
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

  /// `Password`
  String get card_newPsw {
    return Intl.message(
      'Password',
      name: 'card_newPsw',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp_Title {
    return Intl.message(
      'Sign Up',
      name: 'signUp_Title',
      desc: '',
      args: [],
    );
  }

  /// `Nickname`
  String get signUp_Nickname {
    return Intl.message(
      'Nickname',
      name: 'signUp_Nickname',
      desc: '',
      args: [],
    );
  }

  /// `Invitation Code`
  String get signUp_InvitationCode {
    return Intl.message(
      'Invitation Code',
      name: 'signUp_InvitationCode',
      desc: '',
      args: [],
    );
  }

  /// `Apply Virtual Card`
  String get applyCard_Title {
    return Intl.message(
      'Apply Virtual Card',
      name: 'applyCard_Title',
      desc: '',
      args: [],
    );
  }

  /// `Virtual Card`
  String get applyCard_VirtualCard {
    return Intl.message(
      'Virtual Card',
      name: 'applyCard_VirtualCard',
      desc: '',
      args: [],
    );
  }

  /// `Our new virtual card allows you to：`
  String get applyCard_Desc1 {
    return Intl.message(
      'Our new virtual card allows you to：',
      name: 'applyCard_Desc1',
      desc: '',
      args: [],
    );
  }

  /// `- Pay conveniently for online transactions \n- Exchange Currencies & Crypto \n- Send & Receive`
  String get applyCard_Desc2 {
    return Intl.message(
      '- Pay conveniently for online transactions \n- Exchange Currencies & Crypto \n- Send & Receive',
      name: 'applyCard_Desc2',
      desc: '',
      args: [],
    );
  }

  /// `*** There is a fee of ${createFee} to apply for a virtual card.`
  String applyCard_Desc3(Object createFee) {
    return Intl.message(
      '*** There is a fee of \$$createFee to apply for a virtual card.',
      name: 'applyCard_Desc3',
      desc: '',
      args: [createFee],
    );
  }

  /// `*** There is a fee of ${createFee} to apply for a physical card.`
  String applyCard_Desc4(Object createFee) {
    return Intl.message(
      '*** There is a fee of \$$createFee to apply for a physical card.',
      name: 'applyCard_Desc4',
      desc: '',
      args: [createFee],
    );
  }

  /// `APPLY LATER`
  String get applyCard_ApplyLater {
    return Intl.message(
      'APPLY LATER',
      name: 'applyCard_ApplyLater',
      desc: '',
      args: [],
    );
  }

  /// `Apply Virtual Card`
  String get applyCard_ApplyCard {
    return Intl.message(
      'Apply Virtual Card',
      name: 'applyCard_ApplyCard',
      desc: '',
      args: [],
    );
  }

  /// `Card Activity`
  String get cardActivity_tile {
    return Intl.message(
      'Card Activity',
      name: 'cardActivity_tile',
      desc: '',
      args: [],
    );
  }

  /// `Exchange`
  String get exchange_tile {
    return Intl.message(
      'Exchange',
      name: 'exchange_tile',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get exchange_To {
    return Intl.message(
      'To',
      name: 'exchange_To',
      desc: '',
      args: [],
    );
  }

  /// `Wait input(amount should >= ${amount})`
  String exchange_wait(Object amount) {
    return Intl.message(
      'Wait input(amount should >= \$$amount)',
      name: 'exchange_wait',
      desc: '',
      args: [amount],
    );
  }

  /// `Receive at least`
  String get exchange_ReceiveAtLeast {
    return Intl.message(
      'Receive at least',
      name: 'exchange_ReceiveAtLeast',
      desc: '',
      args: [],
    );
  }

  /// `Just need to input in From, minimum $10 or 0.01 ETH. There will be a 6.5% fee for exchanging USD into crypto assets, and a 2% fee for exchanging crypto assets into USD.`
  String get exchange_InputTips1 {
    return Intl.message(
      'Just need to input in From, minimum \$10 or 0.01 ETH. There will be a 6.5% fee for exchanging USD into crypto assets, and a 2% fee for exchanging crypto assets into USD.',
      name: 'exchange_InputTips1',
      desc: '',
      args: [],
    );
  }

  /// `Balance: `
  String get exchange_Balance {
    return Intl.message(
      'Balance: ',
      name: 'exchange_Balance',
      desc: '',
      args: [],
    );
  }

  /// `Max`
  String get exchange_Max {
    return Intl.message(
      'Max',
      name: 'exchange_Max',
      desc: '',
      args: [],
    );
  }

  /// `Your account balance is insufficient, please deposit.`
  String get exchange_notEnoughBalance {
    return Intl.message(
      'Your account balance is insufficient, please deposit.',
      name: 'exchange_notEnoughBalance',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get exchange_Deposit {
    return Intl.message(
      'Deposit',
      name: 'exchange_Deposit',
      desc: '',
      args: [],
    );
  }

  /// `Step {step}`
  String exchange_Step(Object step) {
    return Intl.message(
      'Step $step',
      name: 'exchange_Step',
      desc: '',
      args: [step],
    );
  }

  /// `Review Exchange`
  String get reviewExchange_title {
    return Intl.message(
      'Review Exchange',
      name: 'reviewExchange_title',
      desc: '',
      args: [],
    );
  }

  /// `You will swap`
  String get reviewExchange_YouWillSwap {
    return Intl.message(
      'You will swap',
      name: 'reviewExchange_YouWillSwap',
      desc: '',
      args: [],
    );
  }

  /// `Slippage`
  String get reviewExchange_Slippage {
    return Intl.message(
      'Slippage',
      name: 'reviewExchange_Slippage',
      desc: '',
      args: [],
    );
  }

  /// `Fee {fee}`
  String reviewExchange_Fee(Object fee) {
    return Intl.message(
      'Fee $fee',
      name: 'reviewExchange_Fee',
      desc: '',
      args: [fee],
    );
  }

  /// `Network Cost {cost}`
  String reviewExchange_cost(Object cost) {
    return Intl.message(
      'Network Cost $cost',
      name: 'reviewExchange_cost',
      desc: '',
      args: [cost],
    );
  }

  /// `{tokenName} Activity`
  String tokenActivity_title(Object tokenName) {
    return Intl.message(
      '$tokenName Activity',
      name: 'tokenActivity_title',
      desc: '',
      args: [tokenName],
    );
  }

  /// `Pay`
  String get tokenActivity_Pay {
    return Intl.message(
      'Pay',
      name: 'tokenActivity_Pay',
      desc: '',
      args: [],
    );
  }

  /// `Exchange`
  String get tokenActivity_Exchange {
    return Intl.message(
      'Exchange',
      name: 'tokenActivity_Exchange',
      desc: '',
      args: [],
    );
  }

  /// `Receive`
  String get tokenActivity_Receive {
    return Intl.message(
      'Receive',
      name: 'tokenActivity_Receive',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get tokenActivity_Send {
    return Intl.message(
      'Send',
      name: 'tokenActivity_Send',
      desc: '',
      args: [],
    );
  }

  /// `Crypto`
  String get txHistory_title {
    return Intl.message(
      'Crypto',
      name: 'txHistory_title',
      desc: '',
      args: [],
    );
  }

  /// `Exchange`
  String get txHistory_Exchange {
    return Intl.message(
      'Exchange',
      name: 'txHistory_Exchange',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get txHistory_Send {
    return Intl.message(
      'Send',
      name: 'txHistory_Send',
      desc: '',
      args: [],
    );
  }

  /// `KYC`
  String get kyc_title {
    return Intl.message(
      'KYC',
      name: 'kyc_title',
      desc: '',
      args: [],
    );
  }

  /// `Country/Zone`
  String get kyc_country {
    return Intl.message(
      'Country/Zone',
      name: 'kyc_country',
      desc: '',
      args: [],
    );
  }

  /// `Currently only supports Mainland China`
  String get kyc_id_tips_china {
    return Intl.message(
      'Currently only supports Mainland China',
      name: 'kyc_id_tips_china',
      desc: '',
      args: [],
    );
  }

  /// `Supports 128 countries worldwide`
  String get kyc_id_tips_otherArea {
    return Intl.message(
      'Supports 128 countries worldwide',
      name: 'kyc_id_tips_otherArea',
      desc: '',
      args: [],
    );
  }

  /// `Date of birth`
  String get kyc_dateOfBirth {
    return Intl.message(
      'Date of birth',
      name: 'kyc_dateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Please input English and Number.`
  String get kyc_tips1 {
    return Intl.message(
      'Please input English and Number.',
      name: 'kyc_tips1',
      desc: '',
      args: [],
    );
  }

  /// `Passport Id`
  String get kyc_PassportId {
    return Intl.message(
      'Passport Id',
      name: 'kyc_PassportId',
      desc: '',
      args: [],
    );
  }

  /// `Identity Id`
  String get kyc_IdentityId {
    return Intl.message(
      'Identity Id',
      name: 'kyc_IdentityId',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get kyc_FirstName {
    return Intl.message(
      'First Name',
      name: 'kyc_FirstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get kyc_LastName {
    return Intl.message(
      'Last Name',
      name: 'kyc_LastName',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get kyc_MobileNumber {
    return Intl.message(
      'Mobile Number',
      name: 'kyc_MobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address Information`
  String get kyc_email_address_desc {
    return Intl.message(
      'Shipping Address Information',
      name: 'kyc_email_address_desc',
      desc: '',
      args: [],
    );
  }

  /// `Address Line`
  String get kyc_AddressLine {
    return Intl.message(
      'Address Line',
      name: 'kyc_AddressLine',
      desc: '',
      args: [],
    );
  }

  /// `Address Line 2(Optional)`
  String get kyc_AddressLine2 {
    return Intl.message(
      'Address Line 2(Optional)',
      name: 'kyc_AddressLine2',
      desc: '',
      args: [],
    );
  }

  /// `State/Region`
  String get kyc_StateRegion {
    return Intl.message(
      'State/Region',
      name: 'kyc_StateRegion',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get kyc_City {
    return Intl.message(
      'City',
      name: 'kyc_City',
      desc: '',
      args: [],
    );
  }

  /// `Postal/Zip Code`
  String get kyc_PostalZipCode {
    return Intl.message(
      'Postal/Zip Code',
      name: 'kyc_PostalZipCode',
      desc: '',
      args: [],
    );
  }

  /// `Pick up favorite card`
  String get selectCard_title {
    return Intl.message(
      'Pick up favorite card',
      name: 'selectCard_title',
      desc: '',
      args: [],
    );
  }

  /// `Deposit to Card`
  String get send_title1 {
    return Intl.message(
      'Deposit to Card',
      name: 'send_title1',
      desc: '',
      args: [],
    );
  }

  /// `Deposit to Card`
  String get send_title2 {
    return Intl.message(
      'Deposit to Card',
      name: 'send_title2',
      desc: '',
      args: [],
    );
  }

  /// `withdraw`
  String get send_Withdraw {
    return Intl.message(
      'withdraw',
      name: 'send_Withdraw',
      desc: '',
      args: [],
    );
  }

  /// `deposit`
  String get send_Deposit {
    return Intl.message(
      'deposit',
      name: 'send_Deposit',
      desc: '',
      args: [],
    );
  }

  /// `*** The virtual card withdrawal limit is $50,000 per month.`
  String get send_tips {
    return Intl.message(
      '*** The virtual card withdrawal limit is \$50,000 per month.',
      name: 'send_tips',
      desc: '',
      args: [],
    );
  }

  /// `Account Balance`
  String get send_AccountBalance {
    return Intl.message(
      'Account Balance',
      name: 'send_AccountBalance',
      desc: '',
      args: [],
    );
  }

  /// `Card`
  String get main_home_Card {
    return Intl.message(
      'Card',
      name: 'main_home_Card',
      desc: '',
      args: [],
    );
  }

  /// `Crypto`
  String get main_home_Crypto {
    return Intl.message(
      'Crypto',
      name: 'main_home_Crypto',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get main_home_Shop {
    return Intl.message(
      'Shop',
      name: 'main_home_Shop',
      desc: '',
      args: [],
    );
  }

  /// `Agent`
  String get main_home_agent {
    return Intl.message(
      'Agent',
      name: 'main_home_agent',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get main_home_Profile {
    return Intl.message(
      'Profile',
      name: 'main_home_Profile',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get card_home_title {
    return Intl.message(
      'Home',
      name: 'card_home_title',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get card_home_Account {
    return Intl.message(
      'Account',
      name: 'card_home_Account',
      desc: '',
      args: [],
    );
  }

  /// `Virtual Card`
  String get card_home_Card {
    return Intl.message(
      'Virtual Card',
      name: 'card_home_Card',
      desc: '',
      args: [],
    );
  }

  /// `Recent Transactions`
  String get card_RecentTransactions {
    return Intl.message(
      'Recent Transactions',
      name: 'card_RecentTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Exchange`
  String get card_account_Exchange {
    return Intl.message(
      'Exchange',
      name: 'card_account_Exchange',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get card_account_Account {
    return Intl.message(
      'Account',
      name: 'card_account_Account',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get card_card_Payment {
    return Intl.message(
      'Payment',
      name: 'card_card_Payment',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get card_card_Account {
    return Intl.message(
      'Account',
      name: 'card_card_Account',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get card_card_Pay {
    return Intl.message(
      'Pay',
      name: 'card_card_Pay',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get card_card_Deposit {
    return Intl.message(
      'Deposit',
      name: 'card_card_Deposit',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw`
  String get card_card_Withdraw {
    return Intl.message(
      'Withdraw',
      name: 'card_card_Withdraw',
      desc: '',
      args: [],
    );
  }

  /// `Deposit to Account`
  String get recharge_Title1 {
    return Intl.message(
      'Deposit to Account',
      name: 'recharge_Title1',
      desc: '',
      args: [],
    );
  }

  /// `Withdraw to Account`
  String get recharge_Title2 {
    return Intl.message(
      'Withdraw to Account',
      name: 'recharge_Title2',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get recharge_Amount {
    return Intl.message(
      'Amount',
      name: 'recharge_Amount',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get recharge_CardNumber {
    return Intl.message(
      'Card Number',
      name: 'recharge_CardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Account Balance`
  String get recharge_AccountBalance {
    return Intl.message(
      'Account Balance',
      name: 'recharge_AccountBalance',
      desc: '',
      args: [],
    );
  }

  /// `Card Balance`
  String get recharge_CardBalance {
    return Intl.message(
      'Card Balance',
      name: 'recharge_CardBalance',
      desc: '',
      args: [],
    );
  }

  /// `Pay For NFT`
  String get cardRecharge_title {
    return Intl.message(
      'Pay For NFT',
      name: 'cardRecharge_title',
      desc: '',
      args: [],
    );
  }

  /// `Tokens`
  String get ethereumPage_Tokens {
    return Intl.message(
      'Tokens',
      name: 'ethereumPage_Tokens',
      desc: '',
      args: [],
    );
  }

  /// `NFTs`
  String get ethereumPage_NFTs {
    return Intl.message(
      'NFTs',
      name: 'ethereumPage_NFTs',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get ethereumPage_Pay {
    return Intl.message(
      'Pay',
      name: 'ethereumPage_Pay',
      desc: '',
      args: [],
    );
  }

  /// `Exchange`
  String get ethereumPage_Exchange {
    return Intl.message(
      'Exchange',
      name: 'ethereumPage_Exchange',
      desc: '',
      args: [],
    );
  }

  /// `Receive`
  String get ethereumPage_Receive {
    return Intl.message(
      'Receive',
      name: 'ethereumPage_Receive',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get ethereumPage_Send {
    return Intl.message(
      'Send',
      name: 'ethereumPage_Send',
      desc: '',
      args: [],
    );
  }

  /// `Create New Wallet`
  String get ethereumPage_CreateNewWallet {
    return Intl.message(
      'Create New Wallet',
      name: 'ethereumPage_CreateNewWallet',
      desc: '',
      args: [],
    );
  }

  /// `Recover Wallet`
  String get ethereumPage_RecoverWallet {
    return Intl.message(
      'Recover Wallet',
      name: 'ethereumPage_RecoverWallet',
      desc: '',
      args: [],
    );
  }

  /// `Import WIF`
  String get ethereumRecoverWallet_title {
    return Intl.message(
      'Import WIF',
      name: 'ethereumRecoverWallet_title',
      desc: '',
      args: [],
    );
  }

  /// `WIF`
  String get ethereumRecoverWallet_WIF {
    return Intl.message(
      'WIF',
      name: 'ethereumRecoverWallet_WIF',
      desc: '',
      args: [],
    );
  }

  /// `Export WIF`
  String get exportWif_title {
    return Intl.message(
      'Export WIF',
      name: 'exportWif_title',
      desc: '',
      args: [],
    );
  }

  /// `Copy`
  String get exportWif_Copy {
    return Intl.message(
      'Copy',
      name: 'exportWif_Copy',
      desc: '',
      args: [],
    );
  }

  /// `NFT Exchange`
  String get nftExchange_title {
    return Intl.message(
      'NFT Exchange',
      name: 'nftExchange_title',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get nftExchange_From {
    return Intl.message(
      'From',
      name: 'nftExchange_From',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get nftExchange_To {
    return Intl.message(
      'To',
      name: 'nftExchange_To',
      desc: '',
      args: [],
    );
  }

  /// `Chain Type`
  String get nftExchange_Chain {
    return Intl.message(
      'Chain Type',
      name: 'nftExchange_Chain',
      desc: '',
      args: [],
    );
  }

  /// `Balance: {amount} NFTs`
  String nftExchange_nftBalance(Object amount) {
    return Intl.message(
      'Balance: $amount NFTs',
      name: 'nftExchange_nftBalance',
      desc: '',
      args: [amount],
    );
  }

  /// `Wallet Address`
  String get receiveWallet_WalletAddress {
    return Intl.message(
      'Wallet Address',
      name: 'receiveWallet_WalletAddress',
      desc: '',
      args: [],
    );
  }

  /// `Lightning Invoice`
  String get receiveWallet_LightningInvoice {
    return Intl.message(
      'Lightning Invoice',
      name: 'receiveWallet_LightningInvoice',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get crypto_send_title {
    return Intl.message(
      'Send',
      name: 'crypto_send_title',
      desc: '',
      args: [],
    );
  }

  /// `Asset & Amount`
  String get crypto_send_AssetAmount {
    return Intl.message(
      'Asset & Amount',
      name: 'crypto_send_AssetAmount',
      desc: '',
      args: [],
    );
  }

  /// `Balance: `
  String get crypto_send_Balance {
    return Intl.message(
      'Balance: ',
      name: 'crypto_send_Balance',
      desc: '',
      args: [],
    );
  }

  /// `Memo`
  String get crypto_send_Memo {
    return Intl.message(
      'Memo',
      name: 'crypto_send_Memo',
      desc: '',
      args: [],
    );
  }

  /// `Miner Fee: `
  String get crypto_send_MinerFee {
    return Intl.message(
      'Miner Fee: ',
      name: 'crypto_send_MinerFee',
      desc: '',
      args: [],
    );
  }

  /// `Estimated range`
  String get crypto_send_EstimatedRange {
    return Intl.message(
      'Estimated range',
      name: 'crypto_send_EstimatedRange',
      desc: '',
      args: [],
    );
  }

  /// `Refresh in 5s`
  String get crypto_send_RefreshIn5s {
    return Intl.message(
      'Refresh in 5s',
      name: 'crypto_send_RefreshIn5s',
      desc: '',
      args: [],
    );
  }

  /// `Standard`
  String get crypto_send_Standard {
    return Intl.message(
      'Standard',
      name: 'crypto_send_Standard',
      desc: '',
      args: [],
    );
  }

  /// `Expiration: `
  String get crypto_send_Expiration {
    return Intl.message(
      'Expiration: ',
      name: 'crypto_send_Expiration',
      desc: '',
      args: [],
    );
  }

  /// `Standard`
  String get crypto_sendConfirm_title {
    return Intl.message(
      'Standard',
      name: 'crypto_sendConfirm_title',
      desc: '',
      args: [],
    );
  }

  /// `Payment Details`
  String get crypto_sendConfirm_PaymentDetails {
    return Intl.message(
      'Payment Details',
      name: 'crypto_sendConfirm_PaymentDetails',
      desc: '',
      args: [],
    );
  }

  /// `Memo: `
  String get crypto_sendConfirm_Memo {
    return Intl.message(
      'Memo: ',
      name: 'crypto_sendConfirm_Memo',
      desc: '',
      args: [],
    );
  }

  /// `From: `
  String get crypto_sendConfirm_From {
    return Intl.message(
      'From: ',
      name: 'crypto_sendConfirm_From',
      desc: '',
      args: [],
    );
  }

  /// `To: `
  String get crypto_sendConfirm_To {
    return Intl.message(
      'To: ',
      name: 'crypto_sendConfirm_To',
      desc: '',
      args: [],
    );
  }

  /// `Shop`
  String get shop_title {
    return Intl.message(
      'Shop',
      name: 'shop_title',
      desc: '',
      args: [],
    );
  }

  /// `You have selected {nftTotalCount} NFTs and value is ${nftTotalValue}`
  String shop_tips(Object nftTotalCount, Object nftTotalValue) {
    return Intl.message(
      'You have selected $nftTotalCount NFTs and value is \$$nftTotalValue',
      name: 'shop_tips',
      desc: '',
      args: [nftTotalCount, nftTotalValue],
    );
  }

  /// `Buy NFT`
  String get shop_BuyNFT {
    return Intl.message(
      'Buy NFT',
      name: 'shop_BuyNFT',
      desc: '',
      args: [],
    );
  }

  /// `NFT`
  String get shop_nft_title {
    return Intl.message(
      'NFT',
      name: 'shop_nft_title',
      desc: '',
      args: [],
    );
  }

  /// `Current price`
  String get shop_nft_currPrice {
    return Intl.message(
      'Current price',
      name: 'shop_nft_currPrice',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get shop_nft_Description {
    return Intl.message(
      'Description',
      name: 'shop_nft_Description',
      desc: '',
      args: [],
    );
  }

  /// `Contract Address`
  String get shop_nft_ContractAddress {
    return Intl.message(
      'Contract Address',
      name: 'shop_nft_ContractAddress',
      desc: '',
      args: [],
    );
  }

  /// `Token ID`
  String get shop_nft_TokenID {
    return Intl.message(
      'Token ID',
      name: 'shop_nft_TokenID',
      desc: '',
      args: [],
    );
  }

  /// `Token Standard`
  String get shop_nft_TokenStandard {
    return Intl.message(
      'Token Standard',
      name: 'shop_nft_TokenStandard',
      desc: '',
      args: [],
    );
  }

  /// `Chain`
  String get shop_nft_Chain {
    return Intl.message(
      'Chain',
      name: 'shop_nft_Chain',
      desc: '',
      args: [],
    );
  }

  /// `NFT Tx History`
  String get shop_nft_tx_history_title {
    return Intl.message(
      'NFT Tx History',
      name: 'shop_nft_tx_history_title',
      desc: '',
      args: [],
    );
  }

  /// `Agent`
  String get profile_home_agent {
    return Intl.message(
      'Agent',
      name: 'profile_home_agent',
      desc: '',
      args: [],
    );
  }

  /// `My Invitation Code`
  String get profile_home_InvitationCode {
    return Intl.message(
      'My Invitation Code',
      name: 'profile_home_InvitationCode',
      desc: '',
      args: [],
    );
  }

  /// `My Users`
  String get profile_home_MyUsers {
    return Intl.message(
      'My Users',
      name: 'profile_home_MyUsers',
      desc: '',
      args: [],
    );
  }

  /// `My Reward`
  String get profile_home_MyReward {
    return Intl.message(
      'My Reward',
      name: 'profile_home_MyReward',
      desc: '',
      args: [],
    );
  }

  /// `Update Password`
  String get profile_home_UpdatePassword {
    return Intl.message(
      'Update Password',
      name: 'profile_home_UpdatePassword',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get profile_home_Logout {
    return Intl.message(
      'Logout',
      name: 'profile_home_Logout',
      desc: '',
      args: [],
    );
  }

  /// `Total Users: `
  String get profile_MyUsers_totalUsers {
    return Intl.message(
      'Total Users: ',
      name: 'profile_MyUsers_totalUsers',
      desc: '',
      args: [],
    );
  }

  /// `Total Users: `
  String get profile_UpdatePsw_totalUsers {
    return Intl.message(
      'Total Users: ',
      name: 'profile_UpdatePsw_totalUsers',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get profile_UpdatePassword_OldPassword {
    return Intl.message(
      'Old Password',
      name: 'profile_UpdatePassword_OldPassword',
      desc: '',
      args: [],
    );
  }

  /// `Total Reward: `
  String get profile_MyReward_totalReward {
    return Intl.message(
      'Total Reward: ',
      name: 'profile_MyReward_totalReward',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get profile_language_title {
    return Intl.message(
      'Language',
      name: 'profile_language_title',
      desc: '',
      args: [],
    );
  }

  /// `Reward From`
  String get profile_title_RewardFrom {
    return Intl.message(
      'Reward From',
      name: 'profile_title_RewardFrom',
      desc: '',
      args: [],
    );
  }

  /// `Total Reward: {totalReward} from {totalUser} Users`
  String profile_reward_subTitle1(Object totalReward, Object totalUser) {
    return Intl.message(
      'Total Reward: $totalReward from $totalUser Users',
      name: 'profile_reward_subTitle1',
      desc: '',
      args: [totalReward, totalUser],
    );
  }

  /// `Guide`
  String get profile_guide_title {
    return Intl.message(
      'Guide',
      name: 'profile_guide_title',
      desc: '',
      args: [],
    );
  }

  /// `Deposit via credit card and get USDT.`
  String get profile_guide_desc1 {
    return Intl.message(
      'Deposit via credit card and get USDT.',
      name: 'profile_guide_desc1',
      desc: '',
      args: [],
    );
  }

  /// `Check the balance of USDT.`
  String get profile_guide_desc2 {
    return Intl.message(
      'Check the balance of USDT.',
      name: 'profile_guide_desc2',
      desc: '',
      args: [],
    );
  }

  /// `Exchange USDT to USD.`
  String get profile_guide_desc3 {
    return Intl.message(
      'Exchange USDT to USD.',
      name: 'profile_guide_desc3',
      desc: '',
      args: [],
    );
  }

  /// `USD can withdraw to virtual card.`
  String get profile_guide_desc4 {
    return Intl.message(
      'USD can withdraw to virtual card.',
      name: 'profile_guide_desc4',
      desc: '',
      args: [],
    );
  }

  /// `Check your virtual card.`
  String get profile_guide_desc5 {
    return Intl.message(
      'Check your virtual card.',
      name: 'profile_guide_desc5',
      desc: '',
      args: [],
    );
  }

  /// `Apply Physical Card`
  String get realCard_title {
    return Intl.message(
      'Apply Physical Card',
      name: 'realCard_title',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get realCard_apply {
    return Intl.message(
      'Apply',
      name: 'realCard_apply',
      desc: '',
      args: [],
    );
  }

  /// `Physical Card`
  String get realCard_card_title {
    return Intl.message(
      'Physical Card',
      name: 'realCard_card_title',
      desc: '',
      args: [],
    );
  }

  /// `Bind`
  String get realCard_card_bind {
    return Intl.message(
      'Bind',
      name: 'realCard_card_bind',
      desc: '',
      args: [],
    );
  }

  /// `Area Code`
  String get realCard_card_areaCode {
    return Intl.message(
      'Area Code',
      name: 'realCard_card_areaCode',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get realCard_card_active {
    return Intl.message(
      'Active',
      name: 'realCard_card_active',
      desc: '',
      args: [],
    );
  }

  /// `Active Physical Card`
  String get realCard_card_active_title {
    return Intl.message(
      'Active Physical Card',
      name: 'realCard_card_active_title',
      desc: '',
      args: [],
    );
  }

  /// `The verification code will be sent to your email address: {email}`
  String realCard_card_active_tips(Object email) {
    return Intl.message(
      'The verification code will be sent to your email address: $email',
      name: 'realCard_card_active_tips',
      desc: '',
      args: [email],
    );
  }

  /// `There is a ${fee} fee to apply physical card. Please top up first.`
  String realCard_fee(Object fee) {
    return Intl.message(
      'There is a \$$fee fee to apply physical card. Please top up first.',
      name: 'realCard_fee',
      desc: '',
      args: [fee],
    );
  }

  /// `Pending`
  String get realCard_status1 {
    return Intl.message(
      'Pending',
      name: 'realCard_status1',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get realCard_status2 {
    return Intl.message(
      'Approved',
      name: 'realCard_status2',
      desc: '',
      args: [],
    );
  }

  /// `Application Failed`
  String get realCard_status3 {
    return Intl.message(
      'Application Failed',
      name: 'realCard_status3',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get realCard_name {
    return Intl.message(
      'Name',
      name: 'realCard_name',
      desc: '',
      args: [],
    );
  }

  /// `ID Card Number`
  String get realCard_idCardNum {
    return Intl.message(
      'ID Card Number',
      name: 'realCard_idCardNum',
      desc: '',
      args: [],
    );
  }

  /// `First Name (Pinyin)`
  String get realCard_firstName {
    return Intl.message(
      'First Name (Pinyin)',
      name: 'realCard_firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name (Pinyin)`
  String get realCard_lastName {
    return Intl.message(
      'Last Name (Pinyin)',
      name: 'realCard_lastName',
      desc: '',
      args: [],
    );
  }

  /// `ID Card`
  String get realCard_chinaIdCard {
    return Intl.message(
      'ID Card',
      name: 'realCard_chinaIdCard',
      desc: '',
      args: [],
    );
  }

  /// `Passport`
  String get realCard_otherIdCard {
    return Intl.message(
      'Passport',
      name: 'realCard_otherIdCard',
      desc: '',
      args: [],
    );
  }

  /// `Upload Passport`
  String get realCard_upload_passport {
    return Intl.message(
      'Upload Passport',
      name: 'realCard_upload_passport',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get realCard_gender_male {
    return Intl.message(
      'Male',
      name: 'realCard_gender_male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get realCard_gender_female {
    return Intl.message(
      'Female',
      name: 'realCard_gender_female',
      desc: '',
      args: [],
    );
  }

  /// `Unmarried`
  String get realCard_marry_no {
    return Intl.message(
      'Unmarried',
      name: 'realCard_marry_no',
      desc: '',
      args: [],
    );
  }

  /// `Married`
  String get realCard_marry_yes {
    return Intl.message(
      'Married',
      name: 'realCard_marry_yes',
      desc: '',
      args: [],
    );
  }

  /// `Mainland China`
  String get realCard_shipRegion_china {
    return Intl.message(
      'Mainland China',
      name: 'realCard_shipRegion_china',
      desc: '',
      args: [],
    );
  }

  /// `Hong Kong, China`
  String get realCard_shipRegion_hongKong {
    return Intl.message(
      'Hong Kong, China',
      name: 'realCard_shipRegion_hongKong',
      desc: '',
      args: [],
    );
  }

  /// `Home Address`
  String get realCard_shipAddress_home {
    return Intl.message(
      'Home Address',
      name: 'realCard_shipAddress_home',
      desc: '',
      args: [],
    );
  }

  /// `Company Address`
  String get realCard_shipAddress_company {
    return Intl.message(
      'Company Address',
      name: 'realCard_shipAddress_company',
      desc: '',
      args: [],
    );
  }

  /// `Please upload correct image`
  String get realCard_tips_uploadImage {
    return Intl.message(
      'Please upload correct image',
      name: 'realCard_tips_uploadImage',
      desc: '',
      args: [],
    );
  }

  /// `There is a fee of ${fee} to apply the physical card, please confirm.`
  String realCard_open_fee_desc(Object fee) {
    return Intl.message(
      'There is a fee of \$$fee to apply the physical card, please confirm.',
      name: 'realCard_open_fee_desc',
      desc: '',
      args: [fee],
    );
  }

  /// `A payment of ${fee} is required, the balance is insufficient. Please top up.`
  String realCard_open_balance_not_enough(Object fee) {
    return Intl.message(
      'A payment of \$$fee is required, the balance is insufficient. Please top up.',
      name: 'realCard_open_balance_not_enough',
      desc: '',
      args: [fee],
    );
  }

  /// `Card Shipping Address`
  String get realCard_Step2_title {
    return Intl.message(
      'Card Shipping Address',
      name: 'realCard_Step2_title',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get realCard_Step2_phone {
    return Intl.message(
      'Phone Number',
      name: 'realCard_Step2_phone',
      desc: '',
      args: [],
    );
  }

  /// `Recipient City`
  String get realCard_Step2_city {
    return Intl.message(
      'Recipient City',
      name: 'realCard_Step2_city',
      desc: '',
      args: [],
    );
  }

  /// `City Zip Code`
  String get realCard_Step2_cityCode {
    return Intl.message(
      'City Zip Code',
      name: 'realCard_Step2_cityCode',
      desc: '',
      args: [],
    );
  }

  /// `Detailed Address`
  String get realCard_Step2_address {
    return Intl.message(
      'Detailed Address',
      name: 'realCard_Step2_address',
      desc: '',
      args: [],
    );
  }

  /// `Billing Address`
  String get realCard_Step3_title {
    return Intl.message(
      'Billing Address',
      name: 'realCard_Step3_title',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in non-Mainland China English address`
  String get realCard_Step3_note {
    return Intl.message(
      'Please fill in non-Mainland China English address',
      name: 'realCard_Step3_note',
      desc: '',
      args: [],
    );
  }

  /// `Bind Physical Card`
  String get bindCard_title {
    return Intl.message(
      'Bind Physical Card',
      name: 'bindCard_title',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get bindCard_cardNo {
    return Intl.message(
      'Card Number',
      name: 'bindCard_cardNo',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get bindCard_mobile {
    return Intl.message(
      'Phone Number',
      name: 'bindCard_mobile',
      desc: '',
      args: [],
    );
  }

  /// `CID`
  String get bindCard_cid {
    return Intl.message(
      'CID',
      name: 'bindCard_cid',
      desc: '',
      args: [],
    );
  }

  /// `Card numbers is error, please enter all card numbers`
  String get bindCard_wrongCard {
    return Intl.message(
      'Card numbers is error, please enter all card numbers',
      name: 'bindCard_wrongCard',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get alert_title {
    return Intl.message(
      'Message',
      name: 'alert_title',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get alert_ok {
    return Intl.message(
      'OK',
      name: 'alert_ok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get alert_cancel {
    return Intl.message(
      'Cancel',
      name: 'alert_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Not Supported`
  String get agent_country_not_supported {
    return Intl.message(
      'Not Supported',
      name: 'agent_country_not_supported',
      desc: '',
      args: [],
    );
  }

  /// `NEW KYC AND APPLY`
  String get agent_kyc {
    return Intl.message(
      'NEW KYC AND APPLY',
      name: 'agent_kyc',
      desc: '',
      args: [],
    );
  }

  /// `{email}\n apply new Physical Card ?`
  String agent_kyc_applyCard(Object email) {
    return Intl.message(
      '$email\n apply new Physical Card ?',
      name: 'agent_kyc_applyCard',
      desc: '',
      args: [email],
    );
  }

  /// `KYC history`
  String get agent_kyc_history {
    return Intl.message(
      'KYC history',
      name: 'agent_kyc_history',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get agent_card_active {
    return Intl.message(
      'Active',
      name: 'agent_card_active',
      desc: '',
      args: [],
    );
  }

  /// `Click to Active`
  String get agent_card_inactive {
    return Intl.message(
      'Click to Active',
      name: 'agent_card_inactive',
      desc: '',
      args: [],
    );
  }

  /// `ALL({count})`
  String agent_card_list_all(Object count) {
    return Intl.message(
      'ALL($count)',
      name: 'agent_card_list_all',
      desc: '',
      args: [count],
    );
  }

  /// `Active({count})`
  String agent_card_list_active(Object count) {
    return Intl.message(
      'Active($count)',
      name: 'agent_card_list_active',
      desc: '',
      args: [count],
    );
  }

  /// `To Active({count})`
  String agent_card_list_inactive(Object count) {
    return Intl.message(
      'To Active($count)',
      name: 'agent_card_list_inactive',
      desc: '',
      args: [count],
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

  /// `The email address has already opened a card. If you want to continue to use the same identity to open a card, please go to the Kyc record to operate.`
  String get tips_ExistEmail {
    return Intl.message(
      'The email address has already opened a card. If you want to continue to use the same identity to open a card, please go to the Kyc record to operate.',
      name: 'tips_ExistEmail',
      desc: '',
      args: [],
    );
  }

  /// `Wrong txid`
  String get tips_WrongTxid {
    return Intl.message(
      'Wrong txid',
      name: 'tips_WrongTxid',
      desc: '',
      args: [],
    );
  }

  /// `Top up to wallet address`
  String get tips_WrongTopUp {
    return Intl.message(
      'Top up to wallet address',
      name: 'tips_WrongTopUp',
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

  /// `There is a fee of ${createCardFee} to apply for a virtual card. \n The USD is insufficient, please click Deposit on the Home page to purchase USDT and then exchange it for USD.`
  String tips_needFiveDollarFee(Object createCardFee) {
    return Intl.message(
      'There is a fee of \$$createCardFee to apply for a virtual card. \n The USD is insufficient, please click Deposit on the Home page to purchase USDT and then exchange it for USD.',
      name: 'tips_needFiveDollarFee',
      desc: '',
      args: [createCardFee],
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

  /// `Please deposit enough ETH as gas fee.`
  String get tips_sendTokenError {
    return Intl.message(
      'Please deposit enough ETH as gas fee.',
      name: 'tips_sendTokenError',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout？`
  String get tips_logout {
    return Intl.message(
      'Are you sure you want to logout？',
      name: 'tips_logout',
      desc: '',
      args: [],
    );
  }

  /// `Will get ${amount} and fee is ${fee}.`
  String tips_WithdrawResult(Object amount, Object fee) {
    return Intl.message(
      'Will get \$$amount and fee is \$$fee.',
      name: 'tips_WithdrawResult',
      desc: '',
      args: [amount, fee],
    );
  }

  /// `Set successful!`
  String get tips_successSet {
    return Intl.message(
      'Set successful!',
      name: 'tips_successSet',
      desc: '',
      args: [],
    );
  }

  /// `Invalid verification code, please try again.`
  String get tips_invalidCode {
    return Intl.message(
      'Invalid verification code, please try again.',
      name: 'tips_invalidCode',
      desc: '',
      args: [],
    );
  }

  /// `Identity information from mainland China is temporarily not supported.`
  String get tips_not_support_china {
    return Intl.message(
      'Identity information from mainland China is temporarily not supported.',
      name: 'tips_not_support_china',
      desc: '',
      args: [],
    );
  }

  /// `Apply successful!`
  String get tips_successApply {
    return Intl.message(
      'Apply successful!',
      name: 'tips_successApply',
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
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'TW'),
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
