// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_TW locale. All the
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
  String get localeName => 'zh_TW';

  static String m0(createFee) => "*** 申請虛擬卡片需要支付 ${createFee} 美元的費用。";

  static String m1(step) => "第 ${step} 步";

  static String m2(amount) => "餘額: ${amount} NFT";

  static String m3(totalReward, totalUser) =>
      "獎勵總數: ${totalReward} 來自 ${totalUser} 用戶";

  static String m4(fee) => "費用 ${fee}";

  static String m5(cost) => "網路成本 ${cost}";

  static String m6(nftTotalCount, nftTotalValue) =>
      "您已選擇 ${nftTotalCount} 個 NFT,總值 ${nftTotalValue} 美元";

  static String m7(amount, fee) => "將獲得 ${amount},手續費為 ${fee}";

  static String m8(createCardFee) =>
      "申請虛擬卡需要支付 ${createCardFee} 美元的費用。\n美元不足,請點擊首頁的存款購買 USDT,然後兌換為美元。";

  static String m9(tokenName) => "${tokenName} 活動";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "applyCard_ApplyCard": MessageLookupByLibrary.simpleMessage("申請卡片"),
        "applyCard_ApplyLater": MessageLookupByLibrary.simpleMessage("稍後申請"),
        "applyCard_Desc1": MessageLookupByLibrary.simpleMessage("我們的新虛擬卡片允許您:"),
        "applyCard_Desc2": MessageLookupByLibrary.simpleMessage(
            "- 方便線上交易支付 \n- 兌換貨幣和加密貨幣 \n- 發送和接收"),
        "applyCard_Desc3": m0,
        "applyCard_Title": MessageLookupByLibrary.simpleMessage("申請卡片"),
        "applyCard_VirtualCard": MessageLookupByLibrary.simpleMessage("虛擬卡片"),
        "cardActivity_tile": MessageLookupByLibrary.simpleMessage("卡活動"),
        "cardRecharge_title": MessageLookupByLibrary.simpleMessage("支付NFT"),
        "card_RecentTransactions": MessageLookupByLibrary.simpleMessage("最近交易"),
        "card_account_Account": MessageLookupByLibrary.simpleMessage("賬戶"),
        "card_account_Exchange": MessageLookupByLibrary.simpleMessage("兌換"),
        "card_card_Account": MessageLookupByLibrary.simpleMessage("賬戶"),
        "card_card_Deposit": MessageLookupByLibrary.simpleMessage("存款"),
        "card_card_Pay": MessageLookupByLibrary.simpleMessage("支付"),
        "card_card_Payment": MessageLookupByLibrary.simpleMessage("支付"),
        "card_card_Withdraw": MessageLookupByLibrary.simpleMessage("提款"),
        "card_home_Account": MessageLookupByLibrary.simpleMessage("賬戶"),
        "card_home_Card": MessageLookupByLibrary.simpleMessage("卡片"),
        "card_home_title": MessageLookupByLibrary.simpleMessage("首頁"),
        "common_Back": MessageLookupByLibrary.simpleMessage("返回"),
        "common_Cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "common_CodeLeve1": MessageLookupByLibrary.simpleMessage("弱"),
        "common_CodeLeve2": MessageLookupByLibrary.simpleMessage("普通"),
        "common_CodeLeve3": MessageLookupByLibrary.simpleMessage("強"),
        "common_Confirm": MessageLookupByLibrary.simpleMessage("確認"),
        "common_ConfirmNewPsw": MessageLookupByLibrary.simpleMessage("確認新密碼"),
        "common_Deposit": MessageLookupByLibrary.simpleMessage("存款"),
        "common_Done": MessageLookupByLibrary.simpleMessage("完成"),
        "common_Email": MessageLookupByLibrary.simpleMessage("電子郵件"),
        "common_Exchange": MessageLookupByLibrary.simpleMessage("兌換"),
        "common_GetCode": MessageLookupByLibrary.simpleMessage("獲取驗證碼"),
        "common_NewPsw": MessageLookupByLibrary.simpleMessage("新密碼"),
        "common_Next": MessageLookupByLibrary.simpleMessage("下一步"),
        "common_NoData": MessageLookupByLibrary.simpleMessage("無數據"),
        "common_Ok": MessageLookupByLibrary.simpleMessage("確定"),
        "common_Password": MessageLookupByLibrary.simpleMessage("密碼"),
        "common_Username": MessageLookupByLibrary.simpleMessage("用戶名"),
        "common_VerifyCode": MessageLookupByLibrary.simpleMessage("驗證碼"),
        "common_Withdraw": MessageLookupByLibrary.simpleMessage("提款"),
        "common_Wrong": MessageLookupByLibrary.simpleMessage("錯誤"),
        "crypto_sendConfirm_From": MessageLookupByLibrary.simpleMessage("從: "),
        "crypto_sendConfirm_Memo": MessageLookupByLibrary.simpleMessage("備註: "),
        "crypto_sendConfirm_PaymentDetails":
            MessageLookupByLibrary.simpleMessage("付款詳情"),
        "crypto_sendConfirm_To": MessageLookupByLibrary.simpleMessage("至: "),
        "crypto_sendConfirm_title": MessageLookupByLibrary.simpleMessage("標準"),
        "crypto_send_AssetAmount":
            MessageLookupByLibrary.simpleMessage("資產和數量"),
        "crypto_send_Balance": MessageLookupByLibrary.simpleMessage("餘額: "),
        "crypto_send_EstimatedRange":
            MessageLookupByLibrary.simpleMessage("預估範圍"),
        "crypto_send_Expiration": MessageLookupByLibrary.simpleMessage("到期: "),
        "crypto_send_Memo": MessageLookupByLibrary.simpleMessage("備註"),
        "crypto_send_MinerFee": MessageLookupByLibrary.simpleMessage("礦工費: "),
        "crypto_send_RefreshIn5s":
            MessageLookupByLibrary.simpleMessage("5秒后刷新"),
        "crypto_send_Standard": MessageLookupByLibrary.simpleMessage("標準"),
        "crypto_send_title": MessageLookupByLibrary.simpleMessage("發送"),
        "ethereumPage_CreateNewWallet":
            MessageLookupByLibrary.simpleMessage("創建新錢包"),
        "ethereumPage_Exchange": MessageLookupByLibrary.simpleMessage("兌換"),
        "ethereumPage_NFTs": MessageLookupByLibrary.simpleMessage("NFT"),
        "ethereumPage_Pay": MessageLookupByLibrary.simpleMessage("支付"),
        "ethereumPage_Receive": MessageLookupByLibrary.simpleMessage("接收"),
        "ethereumPage_RecoverWallet":
            MessageLookupByLibrary.simpleMessage("恢復錢包"),
        "ethereumPage_Send": MessageLookupByLibrary.simpleMessage("發送"),
        "ethereumPage_Tokens": MessageLookupByLibrary.simpleMessage("代幣"),
        "ethereumRecoverWallet_WIF":
            MessageLookupByLibrary.simpleMessage("WIF"),
        "ethereumRecoverWallet_title":
            MessageLookupByLibrary.simpleMessage("導入 WIF"),
        "exchange_Balance": MessageLookupByLibrary.simpleMessage("餘額: "),
        "exchange_Deposit": MessageLookupByLibrary.simpleMessage("存款"),
        "exchange_InputTips1": MessageLookupByLibrary.simpleMessage(
            "请在From栏輸入最小10美元或0.01 ETH。從美元兌換加密資產將收取 6.5% 的費用,從加密資產兌換美元將收取 2% 的費用。"),
        "exchange_Max": MessageLookupByLibrary.simpleMessage("最大值"),
        "exchange_ReceiveAtLeast": MessageLookupByLibrary.simpleMessage("至少接收"),
        "exchange_Step": m1,
        "exchange_To": MessageLookupByLibrary.simpleMessage("兌換至"),
        "exchange_notEnoughBalance":
            MessageLookupByLibrary.simpleMessage("您的帳戶餘額不足,請充值。"),
        "exchange_tile": MessageLookupByLibrary.simpleMessage("兌換"),
        "exchange_wait": MessageLookupByLibrary.simpleMessage("請稍等..."),
        "exportWif_Copy": MessageLookupByLibrary.simpleMessage("複製"),
        "exportWif_title": MessageLookupByLibrary.simpleMessage("導出 WIF"),
        "forgetPsw_Title": MessageLookupByLibrary.simpleMessage("忘記密碼"),
        "kyc_AddressLine": MessageLookupByLibrary.simpleMessage("地址"),
        "kyc_AddressLine2": MessageLookupByLibrary.simpleMessage("地址第二行(可選)"),
        "kyc_City": MessageLookupByLibrary.simpleMessage("城市"),
        "kyc_FirstName": MessageLookupByLibrary.simpleMessage("名字"),
        "kyc_IdentityId": MessageLookupByLibrary.simpleMessage("身分證號"),
        "kyc_LastName": MessageLookupByLibrary.simpleMessage("姓氏"),
        "kyc_MobileNumber": MessageLookupByLibrary.simpleMessage("手機號碼"),
        "kyc_PostalZipCode": MessageLookupByLibrary.simpleMessage("郵遞區號"),
        "kyc_StateRegion": MessageLookupByLibrary.simpleMessage("州/地區"),
        "kyc_dateOfBirth": MessageLookupByLibrary.simpleMessage("出生日期"),
        "kyc_tips1": MessageLookupByLibrary.simpleMessage("請輸入英文和數字。"),
        "kyc_title": MessageLookupByLibrary.simpleMessage("認證"),
        "login_Desc": MessageLookupByLibrary.simpleMessage(""),
        "login_ForgotPsw": MessageLookupByLibrary.simpleMessage("忘記密碼?"),
        "login_SignIn": MessageLookupByLibrary.simpleMessage("登錄"),
        "login_SignUp": MessageLookupByLibrary.simpleMessage("註冊"),
        "login_Welcome": MessageLookupByLibrary.simpleMessage("歡迎"),
        "main_home_Card": MessageLookupByLibrary.simpleMessage("卡片"),
        "main_home_Crypto": MessageLookupByLibrary.simpleMessage("加密貨幣"),
        "main_home_Profile": MessageLookupByLibrary.simpleMessage("個人資料"),
        "main_home_Shop": MessageLookupByLibrary.simpleMessage("商店"),
        "nftExchange_Chain": MessageLookupByLibrary.simpleMessage("链条类型"),
        "nftExchange_From": MessageLookupByLibrary.simpleMessage("從"),
        "nftExchange_To": MessageLookupByLibrary.simpleMessage("至"),
        "nftExchange_nftBalance": m2,
        "nftExchange_title": MessageLookupByLibrary.simpleMessage("NFT 兌換"),
        "profile_MyReward_totalReward":
            MessageLookupByLibrary.simpleMessage("獎勵總數: "),
        "profile_MyUsers_totalUsers":
            MessageLookupByLibrary.simpleMessage("用戶總數: "),
        "profile_UpdatePassword_OldPassword":
            MessageLookupByLibrary.simpleMessage("舊密碼"),
        "profile_UpdatePsw_totalUsers":
            MessageLookupByLibrary.simpleMessage("用戶總數: "),
        "profile_guide_desc1":
            MessageLookupByLibrary.simpleMessage("通過信用卡充值並獲得 USDT。"),
        "profile_guide_desc2":
            MessageLookupByLibrary.simpleMessage("查看 USDT 餘額。"),
        "profile_guide_desc3":
            MessageLookupByLibrary.simpleMessage("將 USDT 兌換為 USD。"),
        "profile_guide_desc4":
            MessageLookupByLibrary.simpleMessage("USD 可以提款到虛擬卡。"),
        "profile_guide_desc5": MessageLookupByLibrary.simpleMessage("檢查您的虛擬卡。"),
        "profile_guide_title": MessageLookupByLibrary.simpleMessage("指南"),
        "profile_home_InvitationCode":
            MessageLookupByLibrary.simpleMessage("我的邀請碼"),
        "profile_home_Logout": MessageLookupByLibrary.simpleMessage("登出"),
        "profile_home_MyReward": MessageLookupByLibrary.simpleMessage("我的獎勵"),
        "profile_home_MyUsers": MessageLookupByLibrary.simpleMessage("我的用戶"),
        "profile_home_UpdatePassword":
            MessageLookupByLibrary.simpleMessage("更新密碼"),
        "profile_language_title": MessageLookupByLibrary.simpleMessage("語言"),
        "profile_reward_subTitle1": m3,
        "profile_title_RewardFrom":
            MessageLookupByLibrary.simpleMessage("來自獎勵"),
        "realCard_Step2_address": MessageLookupByLibrary.simpleMessage("详细地址"),
        "realCard_Step2_city": MessageLookupByLibrary.simpleMessage("收件城市"),
        "realCard_Step2_cityCode": MessageLookupByLibrary.simpleMessage("城市邮编"),
        "realCard_Step2_phone": MessageLookupByLibrary.simpleMessage("手机号"),
        "realCard_Step2_title": MessageLookupByLibrary.simpleMessage("卡片寄送地址"),
        "realCard_Step3_note":
            MessageLookupByLibrary.simpleMessage("请填写非中国大陆地区的英文地址"),
        "realCard_Step3_title": MessageLookupByLibrary.simpleMessage("账单寄送地址"),
        "realCard_idCardNum":
            MessageLookupByLibrary.simpleMessage("ID Card Num"),
        "realCard_name": MessageLookupByLibrary.simpleMessage("Name"),
        "realCard_title": MessageLookupByLibrary.simpleMessage("RealCard"),
        "receiveWallet_LightningInvoice":
            MessageLookupByLibrary.simpleMessage("閃電網路發票"),
        "receiveWallet_WalletAddress":
            MessageLookupByLibrary.simpleMessage("錢包地址"),
        "recharge_AccountBalance": MessageLookupByLibrary.simpleMessage("賬戶餘額"),
        "recharge_Amount": MessageLookupByLibrary.simpleMessage("金額"),
        "recharge_CardBalance": MessageLookupByLibrary.simpleMessage("卡片餘額"),
        "recharge_CardNumber": MessageLookupByLibrary.simpleMessage("卡號"),
        "recharge_Title1": MessageLookupByLibrary.simpleMessage("充值到賬戶"),
        "recharge_Title2": MessageLookupByLibrary.simpleMessage("提款到賬戶"),
        "reviewExchange_Fee": m4,
        "reviewExchange_Slippage": MessageLookupByLibrary.simpleMessage("滑點"),
        "reviewExchange_YouWillSwap":
            MessageLookupByLibrary.simpleMessage("您將兌換"),
        "reviewExchange_cost": m5,
        "reviewExchange_title": MessageLookupByLibrary.simpleMessage("兌換詳情"),
        "selectCard_title": MessageLookupByLibrary.simpleMessage("選擇喜愛的卡片"),
        "send_AccountBalance": MessageLookupByLibrary.simpleMessage("賬戶餘額"),
        "send_Deposit": MessageLookupByLibrary.simpleMessage("充值"),
        "send_Withdraw": MessageLookupByLibrary.simpleMessage("提款"),
        "send_tips":
            MessageLookupByLibrary.simpleMessage("*** 虛擬卡每月提款限額為 50,000 美元。"),
        "send_title1": MessageLookupByLibrary.simpleMessage("提款到卡片"),
        "send_title2": MessageLookupByLibrary.simpleMessage("充值到卡片"),
        "shop_BuyNFT": MessageLookupByLibrary.simpleMessage("購買 NFT"),
        "shop_nft_Chain": MessageLookupByLibrary.simpleMessage("鏈"),
        "shop_nft_ContractAddress":
            MessageLookupByLibrary.simpleMessage("合約地址"),
        "shop_nft_Description": MessageLookupByLibrary.simpleMessage("描述"),
        "shop_nft_TokenID": MessageLookupByLibrary.simpleMessage("代幣ID"),
        "shop_nft_TokenStandard": MessageLookupByLibrary.simpleMessage("代幣標準"),
        "shop_nft_currPrice": MessageLookupByLibrary.simpleMessage("當前價格"),
        "shop_nft_title": MessageLookupByLibrary.simpleMessage("NFT"),
        "shop_nft_tx_history_title":
            MessageLookupByLibrary.simpleMessage("NFT交易歷史"),
        "shop_tips": m6,
        "shop_title": MessageLookupByLibrary.simpleMessage("商店"),
        "signUp_InvitationCode": MessageLookupByLibrary.simpleMessage("邀請碼"),
        "signUp_Nickname": MessageLookupByLibrary.simpleMessage("暱稱"),
        "signUp_Title": MessageLookupByLibrary.simpleMessage("註冊"),
        "tips_WithdrawResult": m7,
        "tips_WrongEmail": MessageLookupByLibrary.simpleMessage("錯誤的郵件"),
        "tips_WrongTopUp": MessageLookupByLibrary.simpleMessage("充值到錢包地址"),
        "tips_WrongTxid": MessageLookupByLibrary.simpleMessage("錯誤的交易 ID"),
        "tips_addressIsOnClipboard":
            MessageLookupByLibrary.simpleMessage("地址已複製到剪貼板。"),
        "tips_applyCardFirst": MessageLookupByLibrary.simpleMessage("請先申請新卡。"),
        "tips_buyNftSuccess": MessageLookupByLibrary.simpleMessage("購買NFT成功。"),
        "tips_cardNoIsOnClipboard":
            MessageLookupByLibrary.simpleMessage("卡號已複製到剪貼板。"),
        "tips_checkInputSocialId":
            MessageLookupByLibrary.simpleMessage("請輸入身分證號。"),
        "tips_codeIsOnClipboard":
            MessageLookupByLibrary.simpleMessage("邀請碼已複製到剪貼板。"),
        "tips_comeSoon": MessageLookupByLibrary.simpleMessage("即將推出......"),
        "tips_createEthAddress":
            MessageLookupByLibrary.simpleMessage("請創建一個以太坊地址。"),
        "tips_createWallet":
            MessageLookupByLibrary.simpleMessage("請先創建加密貨幣錢包。"),
        "tips_emptyAddress": MessageLookupByLibrary.simpleMessage("地址不能為空。"),
        "tips_emptyAmount": MessageLookupByLibrary.simpleMessage("金額不能為空。"),
        "tips_emptyAmount1": MessageLookupByLibrary.simpleMessage("從金額不能為空。"),
        "tips_emptyAmount2": MessageLookupByLibrary.simpleMessage("至金額不能為空。"),
        "tips_emptyCardNumber": MessageLookupByLibrary.simpleMessage("卡號不能為空。"),
        "tips_emptyPassword": MessageLookupByLibrary.simpleMessage("密碼不能為空。"),
        "tips_emptyWif": MessageLookupByLibrary.simpleMessage("空白 WIF。"),
        "tips_failDeposit": MessageLookupByLibrary.simpleMessage("充值失敗,請稍後重試。"),
        "tips_failWithdraw":
            MessageLookupByLibrary.simpleMessage("提款失敗,請稍後重試。"),
        "tips_getVerifyCode": MessageLookupByLibrary.simpleMessage("請先獲取驗證碼。"),
        "tips_invalidAddress": MessageLookupByLibrary.simpleMessage("無效地址。"),
        "tips_kycNeed": MessageLookupByLibrary.simpleMessage("您需要先通過認證。"),
        "tips_kycPassed":
            MessageLookupByLibrary.simpleMessage("認證已通過,請稍後在卡片頁面查看。"),
        "tips_kycPending": MessageLookupByLibrary.simpleMessage("認證正在處理中。"),
        "tips_kycRejected":
            MessageLookupByLibrary.simpleMessage("認證被拒絕,請重新提交。"),
        "tips_maxAmount": MessageLookupByLibrary.simpleMessage("金額不能超過最大值。"),
        "tips_maxAmount1": MessageLookupByLibrary.simpleMessage("從金額不能超過最大值。"),
        "tips_needFiveDollarFee": m8,
        "tips_selectCountry": MessageLookupByLibrary.simpleMessage("請選擇國家。"),
        "tips_selectDateOfBirth":
            MessageLookupByLibrary.simpleMessage("請選擇出生日期。"),
        "tips_sendTokenError":
            MessageLookupByLibrary.simpleMessage("請存入足夠的 ETH 作為手續費。"),
        "tips_successDeposit": MessageLookupByLibrary.simpleMessage("充值成功。"),
        "tips_successWithdraw": MessageLookupByLibrary.simpleMessage("提款成功。"),
        "tips_updatedPassword": MessageLookupByLibrary.simpleMessage("密碼已更新。"),
        "tips_waitForReview": MessageLookupByLibrary.simpleMessage("請等待人工審核。"),
        "tips_waiting": MessageLookupByLibrary.simpleMessage("請稍等。"),
        "tips_waitingBalance":
            MessageLookupByLibrary.simpleMessage("請稍等一會兒查看餘額。"),
        "tips_wifIsOnClipboard":
            MessageLookupByLibrary.simpleMessage("WIF 已複製到剪貼板。"),
        "tips_wrongPass": MessageLookupByLibrary.simpleMessage("請輸入正確的密碼。"),
        "tips_wrongPassMatch":
            MessageLookupByLibrary.simpleMessage("密碼和確認密碼不匹配。"),
        "tips_zeroAmount": MessageLookupByLibrary.simpleMessage("金額必須大於 0。"),
        "tips_zeroAmount1": MessageLookupByLibrary.simpleMessage("從金額必須大於 0。"),
        "tips_zeroAmount2": MessageLookupByLibrary.simpleMessage("至金額必須大於 0。"),
        "tokenActivity_Exchange": MessageLookupByLibrary.simpleMessage("兌換"),
        "tokenActivity_Pay": MessageLookupByLibrary.simpleMessage("支付"),
        "tokenActivity_Receive": MessageLookupByLibrary.simpleMessage("接收"),
        "tokenActivity_Send": MessageLookupByLibrary.simpleMessage("發送"),
        "tokenActivity_title": m9,
        "txHistory_Exchange": MessageLookupByLibrary.simpleMessage("兌換"),
        "txHistory_Send": MessageLookupByLibrary.simpleMessage("轉账"),
        "txHistory_title": MessageLookupByLibrary.simpleMessage("加密貨幣")
      };
}
