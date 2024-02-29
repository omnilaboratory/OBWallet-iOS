class CardItemInfo {
  final String iconUrl;
  final String country;
  final String cardNo;
  final double balance;
  final String exp;
  final String cvv;

  CardItemInfo({
    this.cardNo = "",
    this.balance = 0,
    this.exp = "****",
    this.cvv = "***",
    this.iconUrl = "asset/images/icon_master.png",
    this.country = "Hong Kong",
  });
}
