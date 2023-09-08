enum Tips {
  comeSoon("Coming Soon..."),
  emptyAddress("The address cannot be empty"),
  invalidAddress("invalid address"),
  emptyAmount("The amount cannot be empty"),
  zeroAmount("The amount must be greater than 0"),
  maxAmount("The amount cannot exceed the maximum"),
  emptyAmount1("The from amount cannot be empty"),
  zeroAmount1("The from amount must be greater than 0"),
  maxAmount1("The from amount cannot exceed the maximum"),
  emptyAmount2("The to amount cannot be empty"),
  zeroAmount2("The to amount must be greater than 0"),
  createEthAddress("Please create an Ethereum address"),
  waitingBalance(
      "Please waiting for a while to see the balance on the Card page"),
  addressIsOnClipboard("Address is on your Clipboard"),
  wifIsOnClipboard("WIF is on your Clipboard"),
  emptyWif("Empty wif"),
  wrongEmail("Wrong email"),
  emptyPassword("The password cannot be empty"),
  waiting("Please waiting"),
  getVerifyCode("Please get verifyCode first"),
  wrongPass("Please enter the correct password"),
  wrongPassMatch("Wrong password and confirmPassword"),
  ;

  final String value;

  const Tips(this.value);
}
