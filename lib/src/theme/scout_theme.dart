import 'package:flutter/material.dart';
import 'package:scout_ui/src/theme/extensions/scout_colors.dart';
import 'package:scout_ui/src/theme/extensions/scout_gradients.dart';
import 'package:scout_ui/src/theme/extensions/scout_text_lexend.dart';
import 'package:scout_ui/src/theme/scout_theme_definition.dart';

/// Class to define the Scout theme.
class ScoutTheme {
  /// Light Scout Theme.
  static final light = ThemeData(
    colorScheme: lightColorScheme,
    textTheme: textTheme,
    appBarTheme: appBarTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    textButtonTheme: textButtonTheme,
    dialogTheme: modalTheme,
    switchTheme: switchTheme,
    timePickerTheme: timePickerTheme,
    datePickerTheme: datePickerTheme,
    extensions: const [
      ScoutColors(
        scoutGreen: scoutGreen,
        brandBlue: brandBlue,
        loginScreenBackgroundColor: loginScreenBackgroundColor,
        danger: Color(0xFFFE5F55),
      ),
      ScoutGradients(
        linearGradient: LinearGradient(
          colors: [brandBlue, scoutGreen],
        ),
        topLeftBottomRight: LinearGradient(
          colors: [brandBlue, scoutGreen],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        topCenterBottomCenter: LinearGradient(
          transform: GradientRotation(6.05),
          stops: [0.1, 0.9],
          colors: [brandBlue, scoutGreen],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      ScoutTextLexend(
        headlineXl: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 48,
          fontWeight: FontWeight.w600,
        ),
        headlineL: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
        headlineM: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
        headlineS: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        bodyStrong: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bodyDefault: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        link: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        button: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        label: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        caption: TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    ],
  );

  /// Dark Scout Theme.
  static final dark = ThemeData(
    colorScheme: darkColorScheme,
    textTheme: textTheme,
    appBarTheme: darkAppBarTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    textButtonTheme: textButtonTheme,
    dialogTheme: modalTheme,
    switchTheme: switchTheme,
    timePickerTheme: timePickerTheme,
    datePickerTheme: datePickerTheme,
    extensions: const [
      ScoutColors(
        scoutGreen: scoutGreen,
        brandBlue: brandBlue,
        loginScreenBackgroundColor: loginScreenBackgroundColor,
        danger: Color(0xFFFE5F55),
      ),
    ],
  );
}

/// Helper extension for syntax sugar.
extension ExtensionHelper on ThemeData {
  /// Helper getter to access the [ScoutColors] from the Theme.
  ScoutColors get scoutColors => extension<ScoutColors>()!;

  /// Helper getter to access the [ScoutGradients] from the Theme.
  ScoutGradients get scoutGradients => extension<ScoutGradients>()!;

  /// Helper getter to access the [ScoutTextLexend] from the Theme.
  ScoutTextLexend get textLexend => extension<ScoutTextLexend>()!;
}
