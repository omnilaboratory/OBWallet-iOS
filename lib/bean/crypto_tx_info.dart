class CryptoTxInfo {
  late final String title;
  late final DateTime txTime;
  late final double amount;
  late final double? amountOfDollar;

  CryptoTxInfo(
      {required this.title,
      required this.txTime,
      required this.amount,
      this.amountOfDollar = 0});
}
