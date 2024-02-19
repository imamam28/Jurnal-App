import 'package:flutter/services.dart';

import 'number_formatter.dart';

class ThousandTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final formattedValue = NumberFormatter.formatCurrencyWithoutSymbol(
        double.tryParse(newValue.text.replaceAll('.', '')) ?? 0);

    final selectionOffset = newValue.selection.baseOffset +
        (formattedValue.length - newValue.text.length);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: selectionOffset),
    );
  }
}
