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
  static String starString2(String? longText, {int begin = 8,int end = 6}) {
    if (longText != null && longText.isNotEmpty) {
      int totalLength = longText.length;
      if (totalLength > (begin+end)) {
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
}
