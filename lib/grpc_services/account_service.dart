import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class AccountService {
  static final AccountService _instance = AccountService._internal();

  static accountClient? accountServiceClient;

  AccountService._internal();

  static var channel = CommonService.getGrpcChannel();

  static AccountService getInstance() {
    accountServiceClient ??= accountClient(channel!,
        options: CallOptions(metadata: {"token": CommonService.token}));
    return _instance;
  }

  factory AccountService() => _instance;
}