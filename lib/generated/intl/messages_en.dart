// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(createFee) =>
      "*** There is a fee of \$${createFee} to apply for a virtual card.";

  static String m1(totalReward, totalUser) =>
      "Total Reward:${totalReward} from ${totalUser} Users";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "applyCard_ApplyCard":
            MessageLookupByLibrary.simpleMessage("APPLY Card"),
        "applyCard_ApplyLater":
            MessageLookupByLibrary.simpleMessage("APPLY LATER"),
        "applyCard_Desc1": MessageLookupByLibrary.simpleMessage(
            "Our new virtual card allows you to："),
        "applyCard_Desc2": MessageLookupByLibrary.simpleMessage(
            "- Pay conveniently for online transactions \n- Exchange Currencies & Crypto \n- Send & Receive"),
        "applyCard_Desc3": m0,
        "applyCard_Title": MessageLookupByLibrary.simpleMessage("Apply Card"),
        "applyCard_VirtualCard":
            MessageLookupByLibrary.simpleMessage("Virtual Card"),
        "cardRecharge_title1":
            MessageLookupByLibrary.simpleMessage("Pay For NFT"),
        "card_RecentTransactions":
            MessageLookupByLibrary.simpleMessage("Recent Transactions"),
        "card_account_Account": MessageLookupByLibrary.simpleMessage("Account"),
        "card_account_Exchange":
            MessageLookupByLibrary.simpleMessage("Exchange"),
        "card_card_Account": MessageLookupByLibrary.simpleMessage("Account"),
        "card_card_Deposit": MessageLookupByLibrary.simpleMessage("Deposit"),
        "card_card_Pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "card_card_Payment": MessageLookupByLibrary.simpleMessage("Payment"),
        "card_card_Withdraw": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "card_home_Account": MessageLookupByLibrary.simpleMessage("Account"),
        "card_home_Card": MessageLookupByLibrary.simpleMessage("Card"),
        "card_home_title": MessageLookupByLibrary.simpleMessage("Home"),
        "common_Back": MessageLookupByLibrary.simpleMessage("Back"),
        "common_Cancel": MessageLookupByLibrary.simpleMessage("CANCEL"),
        "common_CodeLeve1": MessageLookupByLibrary.simpleMessage("Weak"),
        "common_CodeLeve2": MessageLookupByLibrary.simpleMessage("Normal"),
        "common_CodeLeve3": MessageLookupByLibrary.simpleMessage("Strong"),
        "common_ConfirmNewPsw":
            MessageLookupByLibrary.simpleMessage("Confirm New Password"),
        "common_Deposit": MessageLookupByLibrary.simpleMessage("Deposit"),
        "common_Done": MessageLookupByLibrary.simpleMessage("Done"),
        "common_Email": MessageLookupByLibrary.simpleMessage("Email"),
        "common_Exchange": MessageLookupByLibrary.simpleMessage("Exchange"),
        "common_GetCode": MessageLookupByLibrary.simpleMessage("Get Code"),
        "common_NewPsw": MessageLookupByLibrary.simpleMessage("New Password"),
        "common_Next": MessageLookupByLibrary.simpleMessage("NEXT"),
        "common_NoData": MessageLookupByLibrary.simpleMessage("No Data"),
        "common_Password": MessageLookupByLibrary.simpleMessage("Password"),
        "common_Username": MessageLookupByLibrary.simpleMessage("Username"),
        "common_VerifyCode":
            MessageLookupByLibrary.simpleMessage("Verify Code"),
        "common_Withdraw": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "common_Wrong": MessageLookupByLibrary.simpleMessage("Wrong "),
        "forgetPsw_Title":
            MessageLookupByLibrary.simpleMessage("Forgot Password"),
        "login_Desc":
            MessageLookupByLibrary.simpleMessage("Wallet Description"),
        "login_ForgotPsw":
            MessageLookupByLibrary.simpleMessage("Forgot Password?"),
        "login_SignIn": MessageLookupByLibrary.simpleMessage("Sign In"),
        "login_SignUp": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "login_Welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
        "main_home_Card": MessageLookupByLibrary.simpleMessage("Card"),
        "main_home_Crypto": MessageLookupByLibrary.simpleMessage("Crypto"),
        "main_home_Profile": MessageLookupByLibrary.simpleMessage("Profile"),
        "main_home_Shop": MessageLookupByLibrary.simpleMessage("Shop"),
        "profile_reward_subTitle1": m1,
        "profile_title_RewardFrom":
            MessageLookupByLibrary.simpleMessage("Reward From"),
        "recharge_AccountBalance":
            MessageLookupByLibrary.simpleMessage("Account Balance"),
        "recharge_Amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "recharge_CardBalance":
            MessageLookupByLibrary.simpleMessage("Card Balance"),
        "recharge_CardNumber":
            MessageLookupByLibrary.simpleMessage("Card Number"),
        "recharge_Title1":
            MessageLookupByLibrary.simpleMessage("Deposit to Account"),
        "recharge_Title2":
            MessageLookupByLibrary.simpleMessage("Withdraw to Account"),
        "signUp_InvitationCode":
            MessageLookupByLibrary.simpleMessage("Invitation Code"),
        "signUp_Nickname": MessageLookupByLibrary.simpleMessage("Nickname"),
        "signUp_Title": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "tips_WrongEmail": MessageLookupByLibrary.simpleMessage("Wrong email"),
        "tips_addressIsOnClipboard": MessageLookupByLibrary.simpleMessage(
            "Address is on your clipboard."),
        "tips_applyCardFirst": MessageLookupByLibrary.simpleMessage(
            "Please apply for a new card first."),
        "tips_buyNftSuccess":
            MessageLookupByLibrary.simpleMessage("Buy NFT Successfully."),
        "tips_cardNoIsOnClipboard": MessageLookupByLibrary.simpleMessage(
            "Card NO is on your clipboard."),
        "tips_checkInputSocialId":
            MessageLookupByLibrary.simpleMessage("Please input the social Id."),
        "tips_codeIsOnClipboard": MessageLookupByLibrary.simpleMessage(
            "Invitation Code is on your clipboard."),
        "tips_comeSoon": MessageLookupByLibrary.simpleMessage("Coming Soon..."),
        "tips_createEthAddress": MessageLookupByLibrary.simpleMessage(
            "Please create an ethereum address."),
        "tips_createWallet": MessageLookupByLibrary.simpleMessage(
            "Please create a crypto wallet first."),
        "tips_emptyAddress": MessageLookupByLibrary.simpleMessage(
            "The address cannot be empty."),
        "tips_emptyAmount":
            MessageLookupByLibrary.simpleMessage("The amount cannot be empty."),
        "tips_emptyAmount1": MessageLookupByLibrary.simpleMessage(
            "The from amount cannot be empty."),
        "tips_emptyAmount2": MessageLookupByLibrary.simpleMessage(
            "The to amount cannot be empty."),
        "tips_emptyCardNumber": MessageLookupByLibrary.simpleMessage(
            "The card number cannot be empty."),
        "tips_emptyPassword": MessageLookupByLibrary.simpleMessage(
            "The password cannot be empty."),
        "tips_emptyWif": MessageLookupByLibrary.simpleMessage("Empty WIF."),
        "tips_failDeposit": MessageLookupByLibrary.simpleMessage(
            "Deposit failed, please try again later."),
        "tips_failWithdraw": MessageLookupByLibrary.simpleMessage(
            "Withdraw failed, please try again later."),
        "tips_getVerifyCode": MessageLookupByLibrary.simpleMessage(
            "Please get verification code first."),
        "tips_invalidAddress":
            MessageLookupByLibrary.simpleMessage("Invalid address."),
        "tips_kycNeed":
            MessageLookupByLibrary.simpleMessage("You need KYC first."),
        "tips_kycPassed": MessageLookupByLibrary.simpleMessage(
            "KYC has been passed and please check the card page after a while."),
        "tips_kycPending":
            MessageLookupByLibrary.simpleMessage("KYC is pending."),
        "tips_kycRejected": MessageLookupByLibrary.simpleMessage(
            "KYC is rejected and please do it again."),
        "tips_maxAmount": MessageLookupByLibrary.simpleMessage(
            "The amount cannot exceed the maximum."),
        "tips_maxAmount1": MessageLookupByLibrary.simpleMessage(
            "The from amount cannot exceed the maximum."),
        "tips_needFiveDollarFee": MessageLookupByLibrary.simpleMessage(
            "There is a fee of \$5.00 to apply for a virtual card."),
        "tips_selectCountry":
            MessageLookupByLibrary.simpleMessage("Please select the country."),
        "tips_selectDateOfBirth": MessageLookupByLibrary.simpleMessage(
            "Please select the date of birth."),
        "tips_successDeposit":
            MessageLookupByLibrary.simpleMessage("Deposit successful."),
        "tips_successWithdraw":
            MessageLookupByLibrary.simpleMessage("Withdraw successful."),
        "tips_updatedPassword":
            MessageLookupByLibrary.simpleMessage("Password updated."),
        "tips_waitForReview": MessageLookupByLibrary.simpleMessage(
            "Please wait for manual review."),
        "tips_waiting": MessageLookupByLibrary.simpleMessage("Please wait."),
        "tips_waitingBalance": MessageLookupByLibrary.simpleMessage(
            "Please wait for a while to see the balance."),
        "tips_wifIsOnClipboard":
            MessageLookupByLibrary.simpleMessage("WIF is on your clipboard."),
        "tips_wrongPass": MessageLookupByLibrary.simpleMessage(
            "Please enter the correct password."),
        "tips_wrongPassMatch": MessageLookupByLibrary.simpleMessage(
            "Wrong password and confirmation password."),
        "tips_zeroAmount": MessageLookupByLibrary.simpleMessage(
            "The amount must be greater than 0."),
        "tips_zeroAmount1": MessageLookupByLibrary.simpleMessage(
            "The from amount must be greater than 0."),
        "tips_zeroAmount2": MessageLookupByLibrary.simpleMessage(
            "The to amount must be greater than 0.")
      };
}
