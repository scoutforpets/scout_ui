import 'package:flutter/material.dart';
import 'package:scout_ui/src/theme/extensions/scout_colors.dart';
import 'package:scout_ui/src/theme/extensions/scout_gradients.dart';
import 'package:scout_ui/src/theme/extensions/scout_text_theme.dart';
import 'package:scout_ui/src/theme/scout_theme_definition.dart';

/// Class to define The Pet Connection theme.
class ThePetConnectionTheme {
  /// Light Pet Connection Theme.
  static final light = ThemeData(
    canvasColor: const Color(0xFFCDD674),
    colorScheme: lightColorScheme.copyWith(
      brightness: Brightness.light,
      primary: const Color(0xFFCDD674),
      onPrimary: const Color(0xFF102F43),
      secondary: const Color(0xFFF6F6F6),
      onSecondary: const Color(0xFF102F43),
      tertiary: const Color(0xFFFF1749),
      onTertiary: const Color(0xFFFFFFFF),
      error: const Color(0xFFFF1749),
      onError: const Color(0xFFFFFFFF),
      onSurface: const Color(0xFF102F43),
    ),
    appBarTheme: appBarTheme,
    elevatedButtonTheme: lightElevatedButtonTheme,
    textButtonTheme: textButtonTheme,
    dialogTheme: modalTheme,
    switchTheme: switchTheme,
    timePickerTheme: timePickerTheme,
    datePickerTheme: datePickerTheme,
    extensions: [
      const ScoutColors(
        scoutGreen: Color(0xFFCDD674),
        brandBlue: Color(0xFFFF1749),
        loginScreenBackgroundColor: Color(0xFFCDD674),
        danger: Color(0xFFFF1749),
      ),
      const ScoutGradients(
        linearGradient: LinearGradient(
          colors: [
            Color(0xFFCDD674),
            Color(0xFFFF1749),
          ],
        ),
        topLeftBottomRight: LinearGradient(
          colors: [
            Color(0xFFCDD674),
            Color(0xFFFF1749),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        topCenterBottomCenter: LinearGradient(
          transform: GradientRotation(6.05),
          stops: [0.1, 0.9],
          colors: [
            Color(0xFFCDD674),
            Color(0xFFFF1749),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      ScoutTextTheme(
        headlineXl: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 48,
          fontWeight: FontWeight.w600,
        ),
        headlineL: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
        headlineM: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
        headlineS: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        bodyStrong: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bodyDefault: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        link: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        button: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        label: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        caption: const TextStyle(
          fontFamily: 'Lexend Deca',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        displayLarge: textTheme.displayLarge,
        displayMedium: textTheme.displayMedium,
        displaySmall: textTheme.displaySmall,
        headlineLarge: textTheme.headlineLarge,
        headlineMedium: textTheme.headlineMedium,
        headlineSmall: textTheme.headlineSmall,
        titleLarge: textTheme.titleLarge,
        titleMedium: textTheme.titleMedium,
        titleSmall: textTheme.titleSmall,
        labelLarge: textTheme.labelLarge,
        labelMedium: textTheme.labelMedium,
        labelSmall: textTheme.labelSmall,
        bodyLarge: textTheme.bodyLarge,
      ),
    ],
  );

  /// Dark Pet Connection Theme.
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
        scoutGreen: Color(0xFFCDD674),
        brandBlue: Color(0xFFFF1749),
        loginScreenBackgroundColor: Color(0xFFCDD674),
        danger: Color(0xFFFF1749),
      ),
    ],
  );
}
