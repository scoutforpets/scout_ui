import 'package:flutter/material.dart';

/// {@template scout_text_lexend}
/// Brand-aware text styles as a ThemeExtension. This mirrors Material
/// TextTheme so widgets can use either Theme.of(context).textTheme or
/// Theme.of(context).scoutTextTheme and get consistent styles.
/// {@endtemplate}
class ScoutTextTheme extends ThemeExtension<ScoutTextTheme> {
  /// Construct with legacy-named fields (kept for compatibility) and optional
  /// Material TextTheme slots.
  const ScoutTextTheme({
    // Legacy/custom set (required for back-compat)
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
    // Standard Material TextTheme set (optional)
    this.displayLarge,
    this.displayMedium,
    this.displaySmall,
    this.headlineLarge,
    this.headlineMedium,
    this.headlineSmall,
    this.titleLarge,
    this.titleMedium,
    this.titleSmall,
    this.bodyLarge,
    this.bodyMedium,
    this.bodySmall,
    this.labelLarge,
    this.labelMedium,
    this.labelSmall,
  });

  /// Build from a Material [textTheme], mapping to legacy fields and also
  /// carrying all standard slots.
  factory ScoutTextTheme.fromTextTheme(
    TextTheme textTheme, {
    TextStyle? headlineXl,
    TextStyle? headlineL,
    TextStyle? headlineM,
    TextStyle? headlineS,
    TextStyle? bodyStrong,
    TextStyle? bodyDefault,
    TextStyle? link,
    TextStyle? button,
    TextStyle? label,
    TextStyle? caption,
  }) {
    final inferredHeadlineXl =
        headlineXl ?? textTheme.displayLarge ?? textTheme.headlineLarge;
    final inferredHeadlineL =
        headlineL ?? textTheme.headlineLarge ?? textTheme.titleLarge;
    final inferredHeadlineM =
        headlineM ?? textTheme.headlineMedium ?? textTheme.titleMedium;
    final inferredHeadlineS =
        headlineS ?? textTheme.headlineSmall ?? textTheme.titleSmall;
    final inferredBodyDefault =
        bodyDefault ?? textTheme.bodyMedium ?? textTheme.bodyLarge;
    final inferredBodyStrong = bodyStrong ??
        (textTheme.bodyLarge != null
            ? textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600)
            : textTheme.bodyLarge);

    return ScoutTextTheme(
      headlineXl: inferredHeadlineXl,
      headlineL: inferredHeadlineL,
      headlineM: inferredHeadlineM,
      headlineS: inferredHeadlineS,
      bodyStrong: inferredBodyStrong,
      bodyDefault: inferredBodyDefault,
      link: link ?? textTheme.bodyMedium ?? textTheme.bodyLarge,
      button: button ?? textTheme.labelLarge ?? textTheme.titleSmall,
      label: label ?? textTheme.labelMedium ?? textTheme.labelLarge,
      caption: caption ?? textTheme.labelSmall ?? textTheme.bodySmall,
      // Standard material slots
      displayLarge: textTheme.displayLarge,
      displayMedium: textTheme.displayMedium,
      displaySmall: textTheme.displaySmall,
      headlineLarge: textTheme.headlineLarge,
      headlineMedium: textTheme.headlineMedium,
      headlineSmall: textTheme.headlineSmall,
      titleLarge: textTheme.titleLarge,
      titleMedium: textTheme.titleMedium,
      titleSmall: textTheme.titleSmall,
      bodyLarge: textTheme.bodyLarge,
      bodyMedium: textTheme.bodyMedium,
      bodySmall: textTheme.bodySmall,
      labelLarge: textTheme.labelLarge,
      labelMedium: textTheme.labelMedium,
      labelSmall: textTheme.labelSmall,
    );
  }

  /// Convert this extension into a Material TextTheme. If Material slots are
  /// present they are used directly; otherwise they are inferred from the
  /// legacy fields.
  TextTheme toTextTheme() {
    TextStyle? firstNonNull(TextStyle? a, TextStyle? b) => a ?? b;
    return TextTheme(
      displayLarge: firstNonNull(displayLarge, headlineXl),
      displayMedium: firstNonNull(displayMedium, headlineL),
      displaySmall: firstNonNull(displaySmall, headlineM),
      headlineLarge: firstNonNull(headlineLarge, headlineL),
      headlineMedium: firstNonNull(headlineMedium, headlineM),
      headlineSmall: firstNonNull(headlineSmall, headlineS),
      titleLarge: firstNonNull(titleLarge, headlineS),
      titleMedium: firstNonNull(titleMedium, bodyStrong),
      titleSmall: firstNonNull(titleSmall, bodyDefault),
      bodyLarge: firstNonNull(bodyLarge, bodyStrong),
      bodyMedium: firstNonNull(bodyMedium, bodyDefault),
      bodySmall: firstNonNull(bodySmall, caption),
      labelLarge: firstNonNull(labelLarge, button),
      labelMedium: firstNonNull(labelMedium, label),
      labelSmall: firstNonNull(labelSmall, caption),
    );
  }

  // ===== Legacy/custom styles (kept to avoid breaking changes) =====
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

  // ===== Standard Material TextTheme slots =====
  /// Material TextTheme displayLarge.
  final TextStyle? displayLarge;

  /// Material TextTheme displayMedium.
  final TextStyle? displayMedium;

  /// Material TextTheme displaySmall.
  final TextStyle? displaySmall;

  /// Material TextTheme headlineLarge.
  final TextStyle? headlineLarge;

  /// Material TextTheme headlineMedium.
  final TextStyle? headlineMedium;

  /// Material TextTheme headlineSmall.
  final TextStyle? headlineSmall;

  /// Material TextTheme titleLarge.
  final TextStyle? titleLarge;

  /// Material TextTheme titleMedium.
  final TextStyle? titleMedium;

  /// Material TextTheme titleSmall.
  final TextStyle? titleSmall;

  /// Material TextTheme bodyLarge.
  final TextStyle? bodyLarge;

  /// Material TextTheme bodyMedium.
  final TextStyle? bodyMedium;

  /// Material TextTheme bodySmall.
  final TextStyle? bodySmall;

  /// Material TextTheme labelLarge.
  final TextStyle? labelLarge;

  /// Material TextTheme labelMedium.
  final TextStyle? labelMedium;

  /// Material TextTheme labelSmall.
  final TextStyle? labelSmall;

  @override
  ScoutTextTheme copyWith({
    // Legacy
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
    // Standard
    TextStyle? displayLarge,
    TextStyle? displayMedium,
    TextStyle? displaySmall,
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
  }) {
    return ScoutTextTheme(
      // legacy
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
      // standard
      displayLarge: displayLarge ?? this.displayLarge,
      displayMedium: displayMedium ?? this.displayMedium,
      displaySmall: displaySmall ?? this.displaySmall,
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
    );
  }

  @override
  ScoutTextTheme lerp(ScoutTextTheme? other, double t) {
    if (other is! ScoutTextTheme) {
      return this;
    }
    return ScoutTextTheme(
      // legacy
      headlineXl: TextStyle.lerp(headlineXl, other.headlineXl, t),
      headlineL: TextStyle.lerp(headlineL, other.headlineL, t),
      headlineM: TextStyle.lerp(headlineM, other.headlineM, t),
      headlineS: TextStyle.lerp(headlineS, other.headlineS, t),
      bodyStrong: TextStyle.lerp(bodyStrong, other.bodyStrong, t),
      bodyDefault: TextStyle.lerp(bodyDefault, other.bodyDefault, t),
      link: TextStyle.lerp(link, other.link, t),
      button: TextStyle.lerp(button, other.button, t),
      label: TextStyle.lerp(label, other.label, t),
      caption: TextStyle.lerp(caption, other.caption, t),
      // standard
      displayLarge: TextStyle.lerp(displayLarge, other.displayLarge, t),
      displayMedium: TextStyle.lerp(displayMedium, other.displayMedium, t),
      displaySmall: TextStyle.lerp(displaySmall, other.displaySmall, t),
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t),
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t),
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t),
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t),
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t),
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t),
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t),
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t),
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t),
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t),
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t),
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t),
    );
  }
}
