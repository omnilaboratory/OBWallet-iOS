import 'dart:developer';

import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/country.pbenum.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';

class CardService {
  static final CardService _instance = CardService._internal();

  static CardServiceClient? cardServiceClient;

  CardService._internal();

  static var channel = CommonService.getGrpcChannel();

  static CardService getInstance() {
    cardServiceClient ??= CardServiceClient(channel!,
        options: CallOptions(metadata: {
          "token": CommonService.token,
          "language": GlobalParams.currLangName
        }, timeout: Duration(seconds: GlobalParams.grpcTimeout)));
    return _instance;
  }

  factory CardService() => _instance;

  Future<GrpcResponse> cardList(BuildContext context,{bool isAgentCard = false, bool withoutBalance = true}) async {
    var req = CardListRequest();
    req.isAgentCard = isAgentCard;
    req.withoutBalance = withoutBalance;
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardList(req);
      ret.code = 1;
      if (resp!.items.isNotEmpty) {
        var items = resp.items;
        CommonService.realCardList = [];
        for (int i = 0; i < items.length; i++) {
          var item = items[i];
          if (item.isVcard) {
            if (CommonService.cardInfo.cardNo.isEmpty) {
              CommonService.cardInfo = item;
            }
          } else {
            CommonService.realCardList.add(item);
          }
        }
        ret.data = resp.items;
      }
    } catch (e) {
      UserService.getInstance().setError(context, "cardList", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> applyCard(BuildContext context,
      {bool isShowToast = true,bool isRealCard = false}) async {
    var request = ApplyCardRequest();
    request.currency = CurrencyCode.USD;
    request.isRealCard = isRealCard;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.applyCard(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance()
          .setError(context, "applyCard", e, ret, isShowToast: isShowToast);
    }
    return ret;
  }

  Future<GrpcResponse> cardHistory(
      BuildContext context, String cardNo, Int64 start, Int64 limit) async {
    var request = CardHistoryRequest();
    request.cardNo = cardNo;
    request.start = start;
    request.limit = limit;
    var now = DateTime.now();
    request.startDate =
        DateFormat("yyyy-MM-dd").format(now.add(const Duration(days: -180)));
    request.endDate = DateFormat("yyyy-MM-dd").format(now);
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardHistory(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "cardHistory", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> cardExchangeInfoList(
      BuildContext context, String cardNo, Int64 start, Int64 limit) async {
    var request = CardExchangeInfoListRequest();
    request.cardNo = cardNo;
    request.start = start;
    request.limit = limit;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardExchangeInfoList(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance()
          .setError(context, "cardExchangeInfoList", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> cardRecharge(
      BuildContext context, CardRechargeRequest req,
      {bool isShowToast = true}) async {
    log("$req");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardRecharge(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance()
          .setError(context, "cardRecharge", e, ret, isShowToast: isShowToast);
    }
    return ret;
  }

  Future<GrpcResponse> cardWithdraw(
      BuildContext context, String cardNo, double amt) async {
    var request = CardWithdrawRequest();
    request.cardNo = cardNo;
    request.amt = amt;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardWithdraw(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "cardWithdraw", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getWithdrawResAmt(
      BuildContext context, double amt) async {
    var request = GetWithdrawResAmtRequest();
    request.amt = amt;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.getWithdrawResAmt(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getWithdrawResAmt", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> uploadImage(
      BuildContext context, UserUploadRequest req) async {
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.userUpload(req);
      ret.code = 1;
      ret.data = resp?.fileUrl;
    } catch (e) {
      UserService.getInstance().setError(context, "uploadImage", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> applyRealCard(
      BuildContext context, PcardApplyInfo req) async {
    var ret = GrpcResponse();
    log("$req");
    try {
      // var resp = await cardServiceClient?.kYc(req);
      ret.code = 1;
      // ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "applyRealCard", e, ret);
    }
    return ret;
  }
  Future<GrpcResponse> cardBind(
      BuildContext context, CardBindRequest req) async {
    var ret = GrpcResponse();
    log("$req");
    try {
      var resp = await cardServiceClient?.cardBind(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "cardBind", e, ret,isShowToast: false);
    }
    return ret;
  }
  Future<GrpcResponse> getCardActivateCode(
      BuildContext context, String cardNo) async {
    GetCardActivateCodeRequest req = GetCardActivateCodeRequest();
    req.cardNo = cardNo;
    var ret = GrpcResponse();
    log("$req");
    try {
      var resp = await cardServiceClient?.getCardActivateCode(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getCardActivateCode", e, ret,isShowToast: false);
    }
    return ret;
  }
  Future<GrpcResponse> cardActivate(
      BuildContext context, CardActivateRequest req) async {
    var ret = GrpcResponse();
    log("$req");
    try {
      var resp = await cardServiceClient?.cardActivate(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "cardBind", e, ret,isShowToast: false);
    }
    return ret;
  }

  Future<GrpcResponse> getRealCardStatus() async {
    var ret = GrpcResponse();
    try {
      // var resp = await cardServiceClient
      //     ?.getPcardApplyInfo(GetPcardApplyInfoRequest()) as PcardApplyInfo;
      ret.code = 1;
      // if (resp.createdAt == 0) {
      //   ret.data = -1;
      // } else {
      //   ret.data = resp.status;
      // }
      ret.data = -1;
    } catch (e) {}
    return ret;
  }
}
