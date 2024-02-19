import 'package:intl/intl.dart';

class DateFormatter {

  DateFormatter._();

  static String formatDate(DateTime date){
    final format = DateFormat('dd/MM/yyyy');
    return format.format(date);
  }
}
