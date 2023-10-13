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
    // 1000, 500,200,100, 50,20,10, 5,2,1
    List<int> arr = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
    if (amount.isNaN) {
      amount = 0;
    }
    String amountStr = (amount).toInt().toString();
    int length = amountStr.length;
    for (int i = 0; i < 3; i++) {
      if (length > i) {
        int value = int.parse(amountStr[length - (i + 1)]);
        if (value > 4) {
          arr[7 - i * 3] = 1;
          value -= 5;
        }
        arr[8 - i * 3] = value ~/ 2;
        arr[9 - i * 3] = (value % 2).toInt();
      }
    }

    if (length > 3) {
      arr[0] = int.parse(amountStr.substring(0, length - 3));
    }
    return arr;
  }
}
