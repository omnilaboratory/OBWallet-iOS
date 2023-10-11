enum EnumDollarFace {
  face100D("100D", "100.00"),
  face10D("10D", "10.00"),
  face5D("5D", "5.00"),
  face1D("1D", "1.00"),
  face10C("10C", "0.10"),
  face1C("1C", "0.01"),
  ;
  final String name;
  final String value;

  const EnumDollarFace(this.name, this.value);
}
