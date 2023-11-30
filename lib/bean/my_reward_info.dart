import 'package:fixnum/src/int64.dart';

class MyRewardInfo {
  int index;
  double amount;
  DateTime createTime;
  Int64 dateSec;
  int status;

  MyRewardInfo(
      {required this.index,
      required this.amount,
      required this.createTime,
      required this.dateSec,
      required this.status});
}
