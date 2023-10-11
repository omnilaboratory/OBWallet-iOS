import 'package:decimal/decimal.dart';

class StringTools {
  static String starString(String? longText, {int maxLength = 16}) {
    if (longText != null && longText.isNotEmpty) {
      int totalLength = longText.length;
      if (totalLength > maxLength) {
        int halfLength = ((maxLength - 2) / 2).ceil();
        return "${longText.substring(0, halfLength)}...${longText.substring(totalLength - 1 - halfLength)}";
      }
    }
    return longText!;
  }

  static String starString2(String? longText, {int begin = 8, int end = 6}) {
    if (longText != null && longText.isNotEmpty) {
      int totalLength = longText.length;
      if (totalLength > (begin + end)) {
        return "${longText.substring(0, begin)}...${longText.substring(totalLength - end)}";
      }
    }
    return longText!;
  }

  static String formatCryptoNum(double? num) {
    num ??= 0;
    return Decimal.parse(num.toString()).floor(scale: 6).toString();
  }

  static String formatCurrencyNum(double? num) {
    num ??= 0;
    return Decimal.parse(num.toString()).floor(scale: 2).toString();
  }

  static List<int> getNftCountByMoneyAmount(double amount) {
    // 100d,10d,5d,1d,10c,1c
    List<int> arr = [0, 0, 0, 0, 0, 0];
    if (amount.isNaN) {
      amount = 0;
    }
    String amountStr = (amount * 100).toInt().toString();
    int length = amountStr.length;
    if (length > 0) {
      arr[5] = int.parse(amountStr[length - 1]);
    }
    if (length > 1) {
      arr[4] = int.parse(amountStr[length - 2]);
    }
    if (length > 2) {
      int value = int.parse(amountStr[length - 3]);
      if (value > 4) {
        arr[3] = value - 5;
        arr[2] = 1;
      } else {
        arr[3] = value;
        arr[2] = 0;
      }
    }
    if (length > 3) {
      arr[1] = int.parse(amountStr[length - 4]);
    }
    if (length > 4) {
      arr[0] = int.parse(amountStr.substring(0, length - 4));
    }
    return arr;
  }
}
