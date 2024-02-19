import 'package:flutter/material.dart';

enum SnackBarType { success, error, info, warning, general }

class AppSnackbar {
  static void success(BuildContext context, String message) =>
      show(context, message, type: SnackBarType.success);

  static void error(BuildContext context, String message) =>
      show(context, message, type: SnackBarType.error);

  static void info(BuildContext context, String message) =>
      show(context, message, type: SnackBarType.info);

  static void warning(BuildContext context, String message) =>
      show(context, message, type: SnackBarType.warning);

  static void show(
    BuildContext context,
    String message, {
    SnackBarType type = SnackBarType.general,
  }) {
    Color backgroundColor;
    Widget? icon;
    switch (type) {
      case SnackBarType.success:
        icon = const Icon(
          Icons.check_circle_outline_rounded,
          color: Colors.white,
        );
        backgroundColor = Colors.green.shade500;
        break;
      case SnackBarType.error:
        icon = const Icon(
          Icons.warning,
          color: Colors.white,
        );
        backgroundColor = Colors.red.shade500;
        break;
      case SnackBarType.info:
        icon = const Icon(
          Icons.info_outline_rounded,
          color: Colors.white,
        );
        backgroundColor = Colors.blue.shade500;
        break;
      case SnackBarType.warning:
        icon = const Icon(
          Icons.warning,
          color: Colors.white,
        );
        backgroundColor = Colors.yellow.shade700;
        break;
      default:
        backgroundColor = Colors.grey.shade500;
        break;
    }

    final snackBar = SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      behavior: SnackBarBehavior.floating,
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            icon,
            const SizedBox(width: 8),
          ],
          Expanded(child: Text(message)),
        ],
      ),
      backgroundColor: backgroundColor,
      duration: const Duration(minutes: 2),
      showCloseIcon: true,
      closeIconColor: Colors.white,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void close(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
  }
}
