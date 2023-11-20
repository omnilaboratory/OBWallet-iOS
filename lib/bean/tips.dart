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
  waitingBalance("Please wait for a while to see the balance."),
  addressIsOnClipboard("Address is on your clipboard."),
  cardNoIsOnClipboard("Card NO is on your clipboard."),
  wifIsOnClipboard("WIF is on your clipboard."),
  emptyWif("Empty WIF."),
  wrongEmail("Wrong email"),
  emptyPassword("The password cannot be empty."),
  waiting("Please wait."),
  getVerifyCode("Please get verification code first."),
  wrongPass("Please enter the correct password."),
  wrongPassMatch("Wrong password and confirmation password."),
  updatedPassword("Password updated."),
  selectDateOfBirth("Please select the date of birth."),
  selectCountry("Please select the country."),

  kycNeed("You need KYC first."),
  kycPending("KYC is pending."),
  kycPassed(
      "KYC has been passed and please check the card page after a while."),
  kycRejected("KYC is rejected and please do it again."),
  wrongDateFormat("Wrong Date of birth (DD-MM-YYYY)."),

  checkInputSocialId("Please input the social Id."),
  emptyCardNumber("The card number cannot be empty."),
  applyCardFirst("Please apply for a new card first."),
  waitForReview("Please wait for manual review."),
  waitForReview2("Please wait for manual review and you will get a new card."),
  successWithdraw("Withdraw successful."),
  failWithdraw("Withdraw failed, please try again later."),
  successDeposit("Deposit successful."),
  failDeposit("Deposit failed, please try again later."),
  buyNftSuccess("Buy NFT Successfully."),
  createWallet("Please create a crypto wallet first."),
  needFiveDollarFee("There is a fee of \$5.00 to apply for a virtual card."),
  ;

  final String value;

  const Tips(this.value);
}
