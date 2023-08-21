import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:grpc/grpc.dart';

mixin CommonService {
  static ClientChannel? channel;
  static String token = "";

  static ClientChannel? getGrpcChannel() {
    if (channel == null) {
      var str = '''-----BEGIN CERTIFICATE-----
MIICCTCCAbCgAwIBAgIQLQFqfGZHdVS4WO7rLiGSZDAKBggqhkjOPQQDAjA1MR8w
HQYDVQQKExZsbmQgYXV0b2dlbmVyYXRlZCBjZXJ0MRIwEAYDVQQDEwlsb2NhbGhv
c3QwHhcNMjMwODE3MDQ0MzMzWhcNMjYwNTE0MDQ0MzMzWjA1MR8wHQYDVQQKExZs
bmQgYXV0b2dlbmVyYXRlZCBjZXJ0MRIwEAYDVQQDEwlsb2NhbGhvc3QwWTATBgcq
hkjOPQIBBggqhkjOPQMBBwNCAATUx9aJNyjSBlCRk8I8M1WdVmUDySnW2xDQWgtY
/A8/FuHMn4z7ZrdGdrPGJ1sFJ/z0uBNb8TrUNgL5EE32Y816o4GhMIGeMA4GA1Ud
DwEB/wQEAwICpDATBgNVHSUEDDAKBggrBgEFBQcDATAPBgNVHRMBAf8EBTADAQH/
MB0GA1UdDgQWBBQ4JcJABpdidGdeUmXA0YLd9GDbyjBHBgNVHREEQDA+gglsb2Nh
bGhvc3SCBHVuaXiCCnVuaXhwYWNrZXSCB2J1ZmNvbm6HBH8AAAGHEAAAAAAAAAAA
AAAAAAAAAAEwCgYIKoZIzj0EAwIDRwAwRAIgYqaOcB2PvjH8hR34JRRgduh9Ks9U
p5fy9yg5itlqSZMCIEJ73XIYi8nGqD2a4Cmn129VzU/vOo39ucMvC+E9Da0C
-----END CERTIFICATE-----
''';
      channel = ClientChannel('43.138.107.248',
          port: 19090,
          options: ChannelOptions(
              credentials: ChannelCredentials.secure(
            certificates: utf8.encode(str),
            onBadCertificate: (certificate, host) => true,
          )));
    }
    return channel;
  }

  static String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }
}
