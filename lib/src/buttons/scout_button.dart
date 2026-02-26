import 'package:flutter/material.dart';
import 'package:scout_ui/scout_ui.dart';

/// {@template scout_button}
/// Define custom button with background color.
/// {@endtemplate}
class ScoutButton extends StatelessWidget {
  /// {@macro scout_button}
  const ScoutButton({
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    super.key,
  });

  /// Callback called when button is pressed.
  final VoidCallback? onPressed;

  /// Child text for the button.
  final String text;

  /// Optional [Color], if null fallbacks to [Colors.grey[200]]
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        backgroundColor: backgroundColor ?? Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        text,
        style: theme.scoutTextTheme.bodyStrong!.copyWith(
          color: Colors.black,
        ),
      ),
    );
  }
}
