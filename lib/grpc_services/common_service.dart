import 'dart:convert';

import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:grpc/grpc.dart';

mixin CommonService {
  static ClientChannel? channel;
  static String token = "";
  static UserInfo? userInfo;

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
