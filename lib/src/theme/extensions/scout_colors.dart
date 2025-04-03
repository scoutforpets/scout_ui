import 'package:flutter/material.dart';

/// {@template scout_colors}
/// Define custom colors for the scout theme.
/// {@endtemplate}
class ScoutColors extends ThemeExtension<ScoutColors> {
  /// {macro scout_colors}
  const ScoutColors({
    required this.scoutGreen,
    required this.brandBlue,
    required this.loginScreenBackgroundColor,
    required this.danger,
  });

  /// Green scout color.
  final Color? scoutGreen;

  /// Blue color used in the Scout brand.
  final Color? brandBlue;

  /// Defines the background color for the login screen.
  final Color? loginScreenBackgroundColor;

  /// Defines the danger color.
  final Color? danger;

  @override
  ScoutColors copyWith({
    Color? scoutGreen,
    Color? brandBlue,
    Color? loginScreenBackgroundColor,
    Color? danger,
  }) {
    return ScoutColors(
      scoutGreen: scoutGreen ?? this.scoutGreen,
      brandBlue: brandBlue ?? this.brandBlue,
      loginScreenBackgroundColor:
          loginScreenBackgroundColor ?? this.loginScreenBackgroundColor,
      danger: danger ?? this.danger,
    );
  }

  @override
  ScoutColors lerp(ScoutColors? other, double t) {
    if (other is! ScoutColors) {
      return this;
    }
    return ScoutColors(
      scoutGreen: Color.lerp(scoutGreen, other.scoutGreen, t),
      brandBlue: Color.lerp(brandBlue, other.brandBlue, t),
      loginScreenBackgroundColor: Color.lerp(
        loginScreenBackgroundColor,
        other.loginScreenBackgroundColor,
        t,
      ),
      danger: Color.lerp(danger, other.danger, t),
    );
  }
}
