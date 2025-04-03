import 'package:flutter/material.dart';

/// {@template scout_text_lexend}
/// Define custom gradients for the scout theme.
/// {@endtemplate}
class ScoutTextLexend extends ThemeExtension<ScoutTextLexend> {
  /// {macro scout_colors}
  const ScoutTextLexend({
    required this.headlineL,
    required this.headlineM,
    required this.headlineS,
    required this.bodyStrong,
    required this.bodyDefault,
    required this.link,
    required this.button,
    required this.label,
    required this.caption,
    required this.headlineXl,
  });

  /// Headline XL.
  final TextStyle? headlineXl;

  /// Headline L.
  final TextStyle? headlineL;

  /// Headline M.
  final TextStyle? headlineM;

  /// Headline S.
  final TextStyle? headlineS;

  /// Body strong.
  final TextStyle? bodyStrong;

  /// Body default.
  final TextStyle? bodyDefault;

  /// link.
  final TextStyle? link;

  /// button.
  final TextStyle? button;

  /// label.
  final TextStyle? label;

  /// caption.
  final TextStyle? caption;

  @override
  ScoutTextLexend copyWith({
    TextStyle? headlineL,
    TextStyle? headlineM,
    TextStyle? headlineS,
    TextStyle? bodyStrong,
    TextStyle? bodyDefault,
    TextStyle? link,
    TextStyle? button,
    TextStyle? label,
    TextStyle? caption,
    TextStyle? headlineXl,
  }) {
    return ScoutTextLexend(
      headlineXl: headlineXl ?? this.headlineXl,
      headlineL: headlineL ?? this.headlineL,
      headlineM: headlineM ?? this.headlineM,
      headlineS: headlineS ?? this.headlineS,
      bodyStrong: bodyStrong ?? this.bodyStrong,
      bodyDefault: bodyDefault ?? this.bodyDefault,
      link: link ?? this.link,
      button: button ?? this.button,
      label: label ?? this.label,
      caption: caption ?? this.caption,
    );
  }

  @override
  ScoutTextLexend lerp(ScoutTextLexend? other, double t) {
    if (other is! ScoutTextLexend) {
      return this;
    }
    return ScoutTextLexend(
      headlineXl: TextStyle.lerp(headlineXl, other.headlineXl, t),
      headlineL: TextStyle.lerp(headlineL, other.headlineXl, t),
      headlineM: TextStyle.lerp(headlineM, other.headlineXl, t),
      headlineS: TextStyle.lerp(headlineS, other.headlineXl, t),
      bodyStrong: TextStyle.lerp(bodyStrong, other.headlineXl, t),
      bodyDefault: TextStyle.lerp(bodyDefault, other.headlineXl, t),
      link: TextStyle.lerp(link, other.headlineXl, t),
      button: TextStyle.lerp(button, other.headlineXl, t),
      label: TextStyle.lerp(label, other.headlineXl, t),
      caption: TextStyle.lerp(caption, other.headlineXl, t),
    );
  }
}
