import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';

mixin CommonService {
  static ClientChannel channel = ClientChannel("");

  static Future<ClientChannel> getGrpcChannel() async {
    if (channel.host == "") {
      print("create new channel");
      final caCert = await rootBundle.loadString('asset/config/tls.cert');
      channel = ClientChannel('43.138.107.248',
          port: 19090,
          options: ChannelOptions(
              credentials: ChannelCredentials.secure(
            certificates: utf8.encode(caCert),
            onBadCertificate: (certificate, host) => true,
          )));
    }
    return channel;
  }
}
