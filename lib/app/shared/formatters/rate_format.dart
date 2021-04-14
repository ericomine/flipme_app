import 'package:intl/intl.dart';

class RateFormat {
  final String pattern;
  final String locale;
  late final NumberFormat _numberFormat;

  RateFormat(this.locale, [this.pattern = "#.00"]) {
    _numberFormat = NumberFormat(pattern, locale);
  }

  String format(num number) {
    return "${_numberFormat.format(number)}%";
  }
}
