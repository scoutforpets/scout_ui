import 'package:flutter/material.dart';
import 'package:scout_ui/src/theme/scout_theme.dart';

/// {@template styled_confirmation_dialog}
/// Define custom dialog.
/// {@endtemplate}
class StyledConfirmationDialog extends StatelessWidget {
  /// {@macro styled_confirmation_dialog}
  const StyledConfirmationDialog({
    required this.title,
    required this.content,
    required this.cancelText,
    required this.confirmText,
    required this.onConfirm,
    this.confirmBackgroundColor,
    super.key,
  });

  /// Title on the dialog.
  final String title;

  /// Context on the dialog.
  final Widget content;

  /// String to show in the cancel button.
  final String cancelText;

  /// String to show in the confirmation button.
  final String confirmText;

  /// Callback called when the confirmation button is tapped.
  final VoidCallback onConfirm;

  /// Optional background color for the confirmation button.
  /// If null fallbacks to the colorScheme.error.
  final Color? confirmBackgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      backgroundColor: Colors.white,
      titlePadding: const EdgeInsets.all(16),
      title: Text(
        title,
        style: theme.textLexend.headlineS,
        textAlign: TextAlign.left,
      ),
      content: content,
      contentPadding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 24,
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  backgroundColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(
                  cancelText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(width: 8), // Space between buttons
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      confirmBackgroundColor ?? theme.scoutColors.danger,
                  foregroundColor: Theme.of(context).colorScheme.onError,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: onConfirm,
                child: Text(confirmText, textAlign: TextAlign.center),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
