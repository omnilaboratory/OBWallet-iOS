import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';

class NftTxInfo extends CryptoTxInfo {
  late final List<NftTokenLog> nftTxLogs;

  NftTxInfo({
    required super.title,
    required super.txTime,
    required super.amount,
    required super.fromSymbol,
    required this.nftTxLogs,
    super.targetSymbol = "USD",
    super.amountOfDollar = 0,
    super.status = 0,
  });
}
