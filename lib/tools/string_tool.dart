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

  static String formatCryptoNum(double? num) {
    num ??= 0;
    return Decimal.parse(num.toString()).floor(scale: 6).toString();
  }

  static String formatCurrencyNum(double? num) {
    num ??= 0;
    return Decimal.parse(num.toString()).floor(scale: 2).toString();
  }
}
