class TokenInfo {
  final String name;
  final String iconUrl;
  final double? balance;
  final double? balanceOfDollar;

  const TokenInfo(
      {required this.name,
      required this.iconUrl,
      this.balance = 0.0,
      this.balanceOfDollar = 0.0});
}
