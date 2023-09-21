enum EnumKycStatus {
  none(""),
  pending("pend"),
  passed("passed"),
  rejected("rejected"),
  ;

  final String value;

  const EnumKycStatus(this.value);
}
