import 'package:flutter/material.dart';
import 'package:scout_ui/src/theme/extensions/scout_colors.dart';
import 'package:scout_ui/src/theme/extensions/scout_gradients.dart';
import 'package:scout_ui/src/theme/extensions/scout_text_theme.dart';
import 'package:scout_ui/src/theme/scout_theme_definition.dart';

/// Class to define the Scout theme.
class KenWalksDogsTheme {
  /// Light Scout Theme.
  static final light = ThemeData(
    canvasColor: const Color(0xFFE6C413),
    colorScheme: lightColorScheme.copyWith(
      brightness: Brightness.light,
      primary: const Color(0xFF102F43),
      onPrimary: const Color(0xFFF8FBFB),
      secondary: const Color(0xFFE6C413),
      onSecondary: const Color(0xFF102F43),
      tertiary: const Color(0xFF8EB1BB),
      onTertiary: const Color(0xFF102F43),
      error: const Color(0xFFB00020),
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
        scoutGreen: Color(0xFF102f43),
        brandBlue: Color(0xFFe6c413),
        loginScreenBackgroundColor: Color(0xFFe6c413),
        danger: Color(0xFFFE5F55),
      ),
      const ScoutGradients(
        linearGradient: LinearGradient(
          colors: [
            Color(0xFF456a76),
            Color(0xFF8eb1bb),
          ],
        ),
        topLeftBottomRight: LinearGradient(
          colors: [
            Color(0xFF456a76),
            Color(0xFF8eb1bb),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        topCenterBottomCenter: LinearGradient(
          transform: GradientRotation(6.05),
          stops: [0.1, 0.9],
          colors: [
            Color(0xFF456a76),
            Color(0xFF8eb1bb),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      // Fill all text slots for Poppins so widgets can use
      // scoutTextTheme everywhere.
      ScoutTextTheme(
        // Legacy names
        headlineXl: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 48,
          fontWeight: FontWeight.w600,
        ),
        headlineL: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
        headlineM: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 32,
          fontWeight: FontWeight.w600,
        ),
        headlineS: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        bodyStrong: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        bodyDefault: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        link: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        button: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        label: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        caption: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        // Material slots
        displayLarge: textTheme.displayLarge!.copyWith(
          fontFamily: 'Poppins',
        ),
        displayMedium: textTheme.displayMedium!.copyWith(
          fontFamily: 'Poppins',
        ),
        displaySmall: textTheme.displaySmall!.copyWith(
          fontFamily: 'Poppins',
        ),
        headlineLarge: textTheme.headlineLarge!.copyWith(
          fontFamily: 'Poppins',
        ),
        headlineMedium: textTheme.headlineMedium!.copyWith(
          fontFamily: 'Poppins',
        ),
        headlineSmall: textTheme.headlineSmall!.copyWith(
          fontFamily: 'Poppins',
        ),
        titleLarge: textTheme.titleLarge!.copyWith(
          fontFamily: 'Poppins',
        ),
        titleMedium: textTheme.titleMedium!.copyWith(
          fontFamily: 'Poppins',
        ),
        titleSmall: textTheme.titleSmall!.copyWith(
          fontFamily: 'Poppins',
        ),
        labelLarge: textTheme.labelLarge!.copyWith(
          fontFamily: 'Poppins',
        ),
        labelMedium: textTheme.labelMedium!.copyWith(
          fontFamily: 'Poppins',
        ),
        labelSmall: textTheme.labelSmall!.copyWith(
          fontFamily: 'Poppins',
        ),
        bodyLarge: textTheme.bodyLarge!.copyWith(
          fontFamily: 'Poppins',
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

  /// Helper getter to access the [ScoutTextTheme] from the Theme.
  ScoutTextTheme get scoutTextTheme => extension<ScoutTextTheme>()!;
}
