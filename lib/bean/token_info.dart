class TokenInfo {
  final String name;
  final String iconUrl;
  double? balance;
  double? balanceOfDollar;

  TokenInfo(
      {required this.name,
      required this.iconUrl,
      this.balance = 0.0,
      this.balanceOfDollar = 0.0});
}
