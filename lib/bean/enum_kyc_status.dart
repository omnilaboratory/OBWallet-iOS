enum EnumKycStatus {
  none(""),
  passed("passed"),
  pending("pend"),
  rejected("rejected"),
  ;

  final String value;

  const EnumKycStatus(this.value);
}
