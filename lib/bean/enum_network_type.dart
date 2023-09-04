enum EnumNetworkType {
  mainnet("Mainnet", 1),
  goerli("Goerli Testnet", 5),
  ;

  final String value;
  final int chainId;

  const EnumNetworkType(this.value, this.chainId);
}
