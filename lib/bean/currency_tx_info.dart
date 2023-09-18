class CurrencyTxInfo {
  final String name;
  final double amount;
  final String currencyName;
  final double amountOfDollar;
  final int status;

  CurrencyTxInfo(
      {required this.name,
      required this.currencyName,
      this.amount = 0,
      this.status = 0,
      this.amountOfDollar = 0});
}
