class CryptoTxInfo {
  late final String title;
  late final DateTime txTime;
  late final String fromSymbol;
  late final double amount;
  late final String targetSymbol;
  late final double? amountOfDollar;

  CryptoTxInfo(
      {required this.title,
      required this.txTime,
      required this.amount,
      required this.fromSymbol,
      this.targetSymbol = "USD",
      this.amountOfDollar = 0});
}
