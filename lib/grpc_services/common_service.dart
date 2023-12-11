import 'dart:convert';

import 'package:awallet/bean/dollar_face_info.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/eth/ethservice.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/user.pbgrpc.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:grpc/grpc.dart';

import 'account_service.dart';
import 'card_service.dart';
import 'eth_grpc_service.dart';

mixin CommonService {
  static ClientChannel? channel;
  static String token = "";
  static UserInfo? userInfo;
  static List<DollarFaceInfo> nftInfoList = [];
  static CardInfo cardInfo = CardInfo();
  static String userId = "1";
  static bool firstEnterApp = true;
  static bool isSignUp = false;

  static ClientChannel? getGrpcChannel() {
    if (channel == null) {
      var str = GlobalParams.currNetwork.tlsData;
      channel = ClientChannel(GlobalParams.currNetwork.serverIp,
          port: GlobalParams.currNetwork.port,
          options: ChannelOptions(
              credentials: ChannelCredentials.secure(
            certificates: utf8.encode(str),
            onBadCertificate: (certificate, host) => true,
          )));
    }
    return channel;
  }
}
// when login and signup ,need fresh the user login token auth
resetServices() {
  CommonService.token = "";
  CommonService.userInfo = null;
  CommonService.cardInfo = CardInfo();
  UserService.userServiceClient = null;
  AccountService.accountServiceClient = null;
  CardService.cardServiceClient = null;
  EthGrpcService.ethServiceClient = null;
  EthService.walletInfo = null;
  CommonService.firstEnterApp = true;
}
