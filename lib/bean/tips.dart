enum Tips {
  comeSoon("Coming Soon..."),
  emptyAddress("The address cannot be empty."),
  invalidAddress("Invalid address."),
  emptyAmount("The amount cannot be empty."),
  zeroAmount("The amount must be greater than 0."),
  maxAmount("The amount cannot exceed the maximum."),
  emptyAmount1("The from amount cannot be empty."),
  zeroAmount1("The from amount must be greater than 0."),
  maxAmount1("The from amount cannot exceed the maximum."),
  emptyAmount2("The to amount cannot be empty."),
  zeroAmount2("The to amount must be greater than 0."),
  createEthAddress("Please create an ethereum address."),
  waitingBalance(
      "Please wait for a while to see the balance."),
  addressIsOnClipboard("Address is on your clipboard."),
  wifIsOnClipboard("WIF is on your clipboard."),
  emptyWif("Empty WIF."),
  wrongEmail("Wrong email."),
  emptyPassword("The password cannot be empty."),
  waiting("Please wait."),
  getVerifyCode("Please get verification code first."),
  wrongPass("Please enter the correct password."),
  wrongPassMatch("Wrong password and confirmation password."),
  selectCountry("Please select the country."),
  ;

  final String value;

  const Tips(this.value);
}
