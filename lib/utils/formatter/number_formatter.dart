import 'package:intl/intl.dart';

class NumberFormatter {
  NumberFormatter._();

  static String formatCurrency(double value) {
    final format = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');
    return format.format(value);
  }

  static String formatCurrencyWithoutSymbol(double value) {
    final format = NumberFormat.currency(
      locale: 'id_ID',
      symbol: '',
      decimalDigits: 0,
    );
    return format.format(value);
  }
}
