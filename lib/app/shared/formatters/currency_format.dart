import 'package:intl/intl.dart';

class CurrencyFormat {
  final bool dotThousands;
  final String locale;
  late final NumberFormat _numberFormat;

  CurrencyFormat(this.locale, [this.dotThousands = false]) {
    // Do not use NumberFormat.currency because symbol is currently broken
    _numberFormat = NumberFormat(dotThousands ? ",###.00" : "#.00", locale);
  }

  String format(num number) {
    return "R\$ ${_numberFormat.format(number)}";
  }
}
