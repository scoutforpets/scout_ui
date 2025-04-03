import 'package:flutter/material.dart';
import 'package:scout_ui/scout_ui.dart';

/// {@template scout_gradient_button}
/// Define custom button with gradient background.
/// {@endtemplate}
class ScoutGradientButton extends StatelessWidget {
  /// {@macro scout_gradient_button}
  const ScoutGradientButton({
    required this.onPressed,
    required this.text,
    this.loading = false,
    super.key,
  });

  /// Callback called when button is pressed.
  final VoidCallback? onPressed;

  /// String text for the button.
  final String text;

  /// Loading flag to show circular progress indicator.
  final bool loading;

  /// Internal get to check if button is enabled.
  bool get _isEnabled => onPressed != null;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: _isEnabled
            ? theme.scoutGradients.topLeftBottomRight
            : theme.scoutGradients.topLeftBottomRight!.withOpacity(0.5),
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: loading
            ? const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2,
                ),
              )
            : Text(
                text,
                style: theme.textLexend.bodyStrong!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
