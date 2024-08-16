import 'package:flutter/material.dart';

void showCustomSnackBar({
  required BuildContext context,
  required String message,
  bool isError = false,
}) {
  final theme = Theme.of(context);
  final messenger = ScaffoldMessenger.of(context);
  final errorColor = theme.colorScheme.error;
  final successColor = theme.colorScheme.primary;

  messenger.showSnackBar(
    SnackBar(
      backgroundColor: isError ? errorColor : successColor,
      behavior: SnackBarBehavior.floating,
      closeIconColor: Colors.white,
      content: Text(message),
      dismissDirection: DismissDirection.horizontal,
      showCloseIcon: true,
    ),
  );
}