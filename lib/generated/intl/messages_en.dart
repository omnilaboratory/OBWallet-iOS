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

  static String m1(step) => "Step ${step}";

  static String m2(amount) => "Balance: ${amount} NFTs";

  static String m3(totalReward, totalUser) =>
      "Total Reward: ${totalReward} from ${totalUser} Users";

  static String m4(nftTotalCount, nftTotalValue) =>
      "You have selected ${nftTotalCount} NFTs and value is \$${nftTotalValue}";

  static String m5(createCardFee) =>
      "There is a fee of \$${createCardFee} to apply for a virtual card. \n The USD is insufficient, please click Deposit on the Home page to purchase USDT and then exchange it for USD.";

  static String m6(tokenName) => "${tokenName} Activity";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "applyCard_ApplyCard":
            MessageLookupByLibrary.simpleMessage("Apply Card"),
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
        "cardActivity_tile":
            MessageLookupByLibrary.simpleMessage("Card Activity"),
        "cardRecharge_title":
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
        "common_Confirm": MessageLookupByLibrary.simpleMessage("confirm"),
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
        "common_Ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "common_Password": MessageLookupByLibrary.simpleMessage("Password"),
        "common_Username": MessageLookupByLibrary.simpleMessage("Username"),
        "common_VerifyCode":
            MessageLookupByLibrary.simpleMessage("Verify Code"),
        "common_Withdraw": MessageLookupByLibrary.simpleMessage("Withdraw"),
        "common_Wrong": MessageLookupByLibrary.simpleMessage("Wrong "),
        "crypto_sendConfirm_From":
            MessageLookupByLibrary.simpleMessage("From: "),
        "crypto_sendConfirm_Memo":
            MessageLookupByLibrary.simpleMessage("Memo: "),
        "crypto_sendConfirm_PaymentDetails":
            MessageLookupByLibrary.simpleMessage("Payment Details"),
        "crypto_sendConfirm_To": MessageLookupByLibrary.simpleMessage("To: "),
        "crypto_sendConfirm_title":
            MessageLookupByLibrary.simpleMessage("Standard"),
        "crypto_send_AssetAmount":
            MessageLookupByLibrary.simpleMessage("Asset & Amount"),
        "crypto_send_Balance":
            MessageLookupByLibrary.simpleMessage("Balance: "),
        "crypto_send_EstimatedRange":
            MessageLookupByLibrary.simpleMessage("Estimated range"),
        "crypto_send_Expiration":
            MessageLookupByLibrary.simpleMessage("Expiration: "),
        "crypto_send_Memo": MessageLookupByLibrary.simpleMessage("Memo"),
        "crypto_send_MinerFee":
            MessageLookupByLibrary.simpleMessage("Miner Fee: "),
        "crypto_send_RefreshIn5s":
            MessageLookupByLibrary.simpleMessage("Refresh in 5s"),
        "crypto_send_Standard":
            MessageLookupByLibrary.simpleMessage("Standard"),
        "crypto_send_title": MessageLookupByLibrary.simpleMessage("Send"),
        "ethereumPage_CreateNewWallet":
            MessageLookupByLibrary.simpleMessage("Create New Wallet"),
        "ethereumPage_Exchange":
            MessageLookupByLibrary.simpleMessage("Exchange"),
        "ethereumPage_NFTs": MessageLookupByLibrary.simpleMessage("NFTs"),
        "ethereumPage_Pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "ethereumPage_Receive": MessageLookupByLibrary.simpleMessage("Receive"),
        "ethereumPage_RecoverWallet":
            MessageLookupByLibrary.simpleMessage("Recover Wallet"),
        "ethereumPage_Send": MessageLookupByLibrary.simpleMessage("Send"),
        "ethereumPage_Tokens": MessageLookupByLibrary.simpleMessage("Tokens"),
        "ethereumRecoverWallet_WIF":
            MessageLookupByLibrary.simpleMessage("WIF"),
        "ethereumRecoverWallet_title":
            MessageLookupByLibrary.simpleMessage("Import WIF"),
        "exchange_Balance": MessageLookupByLibrary.simpleMessage("Balance: "),
        "exchange_Deposit": MessageLookupByLibrary.simpleMessage("Deposit"),
        "exchange_InputTips1": MessageLookupByLibrary.simpleMessage(
            "Just need to input in From, minimum \$10 or 0.01 ETH. There will be a 6.5% fee for exchanging USD into crypto assets, and a 2% fee for exchanging crypto assets into USD."),
        "exchange_Max": MessageLookupByLibrary.simpleMessage("Max"),
        "exchange_ReceiveAtLeast":
            MessageLookupByLibrary.simpleMessage("Receive at least"),
        "exchange_Step": m1,
        "exchange_To": MessageLookupByLibrary.simpleMessage("To"),
        "exchange_notEnoughBalance": MessageLookupByLibrary.simpleMessage(
            "Your account balance is insufficient, please deposit."),
        "exchange_tile": MessageLookupByLibrary.simpleMessage("Exchange"),
        "exchange_wait":
            MessageLookupByLibrary.simpleMessage("Wait a while..."),
        "exportWif_Copy": MessageLookupByLibrary.simpleMessage("Copy"),
        "exportWif_title": MessageLookupByLibrary.simpleMessage("Export WIF"),
        "forgetPsw_Title":
            MessageLookupByLibrary.simpleMessage("Forgot Password"),
        "kyc_AddressLine": MessageLookupByLibrary.simpleMessage("Address Line"),
        "kyc_AddressLine2":
            MessageLookupByLibrary.simpleMessage("Address Line 2(Optional)"),
        "kyc_City": MessageLookupByLibrary.simpleMessage("City"),
        "kyc_FirstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "kyc_IdentityId": MessageLookupByLibrary.simpleMessage("Identity Id"),
        "kyc_LastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "kyc_MobileNumber":
            MessageLookupByLibrary.simpleMessage("Mobile Number"),
        "kyc_PostalZipCode":
            MessageLookupByLibrary.simpleMessage("Postal/Zip Code"),
        "kyc_StateRegion": MessageLookupByLibrary.simpleMessage("State/Region"),
        "kyc_dateOfBirth":
            MessageLookupByLibrary.simpleMessage("Date of birth"),
        "kyc_tips1": MessageLookupByLibrary.simpleMessage(
            "Please input English and Number."),
        "kyc_title": MessageLookupByLibrary.simpleMessage("Kyc"),
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
        "nftExchange_From": MessageLookupByLibrary.simpleMessage("From"),
        "nftExchange_To": MessageLookupByLibrary.simpleMessage("To"),
        "nftExchange_nftBalance": m2,
        "nftExchange_title":
            MessageLookupByLibrary.simpleMessage("NFT Exchange"),
        "profile_MyReward_totalReward":
            MessageLookupByLibrary.simpleMessage("Total Reward: "),
        "profile_MyUsers_totalUsers":
            MessageLookupByLibrary.simpleMessage("Total Users: "),
        "profile_UpdatePassword_OldPassword":
            MessageLookupByLibrary.simpleMessage("Old Password"),
        "profile_UpdatePsw_totalUsers":
            MessageLookupByLibrary.simpleMessage("Total Users: "),
        "profile_guide_desc1": MessageLookupByLibrary.simpleMessage(
            "Deposit via credit card and get USDT."),
        "profile_guide_desc2":
            MessageLookupByLibrary.simpleMessage("Check the balance of USDT."),
        "profile_guide_desc3":
            MessageLookupByLibrary.simpleMessage("Exchange USDT to USD."),
        "profile_guide_desc4": MessageLookupByLibrary.simpleMessage(
            "USD can withdraw to virtual card."),
        "profile_guide_desc5":
            MessageLookupByLibrary.simpleMessage("Check your virtual card."),
        "profile_guide_title": MessageLookupByLibrary.simpleMessage("Guide"),
        "profile_home_InvitationCode":
            MessageLookupByLibrary.simpleMessage("My Invitation Code"),
        "profile_home_Logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "profile_home_MyReward":
            MessageLookupByLibrary.simpleMessage("My Reward"),
        "profile_home_MyUsers":
            MessageLookupByLibrary.simpleMessage("My Users"),
        "profile_home_UpdatePassword":
            MessageLookupByLibrary.simpleMessage("Update Password"),
        "profile_language_title":
            MessageLookupByLibrary.simpleMessage("Language"),
        "profile_reward_subTitle1": m3,
        "profile_title_RewardFrom":
            MessageLookupByLibrary.simpleMessage("Reward From"),
        "reReviewExchange_Slippage":
            MessageLookupByLibrary.simpleMessage("Slippage"),
        "reReviewExchange_YouWillSwap":
            MessageLookupByLibrary.simpleMessage("You will swap"),
        "reReviewExchange_title":
            MessageLookupByLibrary.simpleMessage("Review Exchange"),
        "receiveWallet_LightningInvoice":
            MessageLookupByLibrary.simpleMessage("Lightning Invoice"),
        "receiveWallet_WalletAddress":
            MessageLookupByLibrary.simpleMessage("Wallet Address"),
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
        "selectCard_title":
            MessageLookupByLibrary.simpleMessage("Pick up favorite card"),
        "send_AccountBalance":
            MessageLookupByLibrary.simpleMessage("Account Balance"),
        "send_Deposit": MessageLookupByLibrary.simpleMessage("deposit"),
        "send_Withdraw": MessageLookupByLibrary.simpleMessage("withdraw"),
        "send_tips": MessageLookupByLibrary.simpleMessage(
            "*** The virtual card withdrawal limit is \$50,000 per month."),
        "send_title1": MessageLookupByLibrary.simpleMessage("Withdraw to Card"),
        "send_title2": MessageLookupByLibrary.simpleMessage("Deposit to Card"),
        "shop_BuyNFT": MessageLookupByLibrary.simpleMessage("Buy NFT"),
        "shop_nft_Chain": MessageLookupByLibrary.simpleMessage("Chain"),
        "shop_nft_ContractAddress":
            MessageLookupByLibrary.simpleMessage("Contract Address"),
        "shop_nft_Description":
            MessageLookupByLibrary.simpleMessage("Description"),
        "shop_nft_TokenID": MessageLookupByLibrary.simpleMessage("Token ID"),
        "shop_nft_TokenStandard":
            MessageLookupByLibrary.simpleMessage("Token Standard"),
        "shop_nft_currPrice":
            MessageLookupByLibrary.simpleMessage("Current price"),
        "shop_nft_title": MessageLookupByLibrary.simpleMessage("NFT"),
        "shop_nft_tx_history_title":
            MessageLookupByLibrary.simpleMessage("NFT Tx History"),
        "shop_tips": m4,
        "shop_title": MessageLookupByLibrary.simpleMessage("Shop"),
        "signUp_InvitationCode":
            MessageLookupByLibrary.simpleMessage("Invitation Code"),
        "signUp_Nickname": MessageLookupByLibrary.simpleMessage("Nickname"),
        "signUp_Title": MessageLookupByLibrary.simpleMessage("Sign Up"),
        "tips_WrongEmail": MessageLookupByLibrary.simpleMessage("Wrong email"),
        "tips_WrongTopUp":
            MessageLookupByLibrary.simpleMessage("Top up to wallet address"),
        "tips_WrongTxid": MessageLookupByLibrary.simpleMessage("Wrong txid"),
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
        "tips_needFiveDollarFee": m5,
        "tips_selectCountry":
            MessageLookupByLibrary.simpleMessage("Please select the country."),
        "tips_selectDateOfBirth": MessageLookupByLibrary.simpleMessage(
            "Please select the date of birth."),
        "tips_sendTokenError": MessageLookupByLibrary.simpleMessage(
            "The gas fee is insufficient."),
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
            "The to amount must be greater than 0."),
        "tokenActivity_Exchange":
            MessageLookupByLibrary.simpleMessage("Exchange"),
        "tokenActivity_Pay": MessageLookupByLibrary.simpleMessage("Pay"),
        "tokenActivity_Receive":
            MessageLookupByLibrary.simpleMessage("Receive"),
        "tokenActivity_Send": MessageLookupByLibrary.simpleMessage("Send"),
        "tokenActivity_title": m6,
        "txHistory_Exchange": MessageLookupByLibrary.simpleMessage("Exchange"),
        "txHistory_Send": MessageLookupByLibrary.simpleMessage("Send"),
        "txHistory_title": MessageLookupByLibrary.simpleMessage("Crypto")
      };
}
