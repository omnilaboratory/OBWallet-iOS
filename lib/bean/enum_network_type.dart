enum EnumNetworkType {
  mainnet("Mainnet", 1,"gapi.obwlt.top",443,''),
  goerli("Goerli Testnet", 5,"43.138.107.248",19090,''),
  ;

  final String value;
  final int chainId;
  final String serverIp;
  final int port;
  final String tlsData;

  const EnumNetworkType(this.value, this.chainId,this.serverIp,this.port,this.tlsData);
}
