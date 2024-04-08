class CardItemInfo {
  final String iconUrl;
  final String country;
  final String cardNo;
  final String balance;
  final String exp;
  final String cvv;

  CardItemInfo({
    this.cardNo = "",
    this.balance = "--",
    this.exp = "****",
    this.cvv = "***",
    this.iconUrl = "asset/images/icon_master.png",
    this.country = "Hong Kong",
  });
}
