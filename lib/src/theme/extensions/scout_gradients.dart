import 'package:flutter/material.dart';

/// {@template scout_gradients}
/// Define custom gradients for the scout theme.
/// {@endtemplate}
class ScoutGradients extends ThemeExtension<ScoutGradients> {
  /// {macro scout_colors}
  const ScoutGradients({
    required this.linearGradient,
    required this.topLeftBottomRight,
    required this.topCenterBottomCenter,
  });

  /// Linear gradient.
  final LinearGradient? linearGradient;

  /// Linear gradient with start on top left and end on bottom right.
  final LinearGradient? topLeftBottomRight;

  /// Linear gradient with start on top center and end on bottom center.
  final LinearGradient? topCenterBottomCenter;

  @override
  ScoutGradients copyWith({
    LinearGradient? linearGradient,
    LinearGradient? topLeftBottomRight,
    LinearGradient? topCenterBottomCenter,
  }) {
    return ScoutGradients(
      linearGradient: linearGradient ?? this.linearGradient,
      topLeftBottomRight: topLeftBottomRight ?? this.topLeftBottomRight,
      topCenterBottomCenter:
          topCenterBottomCenter ?? this.topCenterBottomCenter,
    );
  }

  @override
  ScoutGradients lerp(ScoutGradients? other, double t) {
    if (other is! ScoutGradients) {
      return this;
    }
    return ScoutGradients(
      linearGradient: LinearGradient.lerp(
        linearGradient,
        other.linearGradient,
        t,
      ),
      topLeftBottomRight: LinearGradient.lerp(
        topLeftBottomRight,
        other.topLeftBottomRight,
        t,
      ),
      topCenterBottomCenter: LinearGradient.lerp(
        topCenterBottomCenter,
        other.topCenterBottomCenter,
        t,
      ),
    );
  }
}
