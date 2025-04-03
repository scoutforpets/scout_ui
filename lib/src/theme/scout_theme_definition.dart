import 'package:flutter/material.dart';

/// Text theme.
const textTheme = TextTheme(
  displayLarge: TextStyle(
    fontFamily: 'Proxima Nova Light',
    fontSize: 44,
    fontWeight: FontWeight.w100,
  ),
  displayMedium: TextStyle(
    fontFamily: 'Proxima Nova Light',
    fontSize: 32,
    fontWeight: FontWeight.w100,
  ),
  displaySmall: TextStyle(
    fontFamily: 'Proxima Nova Light',
    fontSize: 21,
    fontWeight: FontWeight.w100,
  ),
  headlineLarge: TextStyle(
    fontFamily: 'Proxima Nova Semibold',
    fontSize: 32,
  ),
  headlineMedium: TextStyle(
    fontFamily: 'Proxima Nova Semibold',
    fontSize: 28,
  ),
  headlineSmall: TextStyle(
    fontFamily: 'Proxima Nova Semibold',
    fontSize: 18,
    fontWeight: FontWeight.w600,
  ),
  titleLarge: TextStyle(
    fontFamily: 'Proxima Nova Bold',
    fontSize: 32,
  ),
  titleMedium: TextStyle(
    fontFamily: 'Proxima Nova Bold',
    fontSize: 28,
  ),
  titleSmall: TextStyle(
    fontFamily: 'Proxima Nova Bold',
    fontSize: 18,
  ),
  labelLarge: TextStyle(
    fontFamily: 'Proxima Nova Regular',
    fontSize: 24,
  ),
  labelMedium: TextStyle(
    fontFamily: 'Proxima Nova Regular',
    fontSize: 20,
  ),
  labelSmall: TextStyle(
    fontFamily: 'Proxima Nova Regular',
    fontSize: 16,
  ),
  bodyLarge: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 28,
    fontWeight: FontWeight.w300,
  ),
);

/// Green color.
const scoutGreen = Color(0xFF26C9A7);

/// Brand blur color.
const brandBlue = Color(0xFF63B3D7);

/// Background color for the login screen.
const loginScreenBackgroundColor = Color(0xFF22B999);

/// Color scheme for the light theme.
const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF24BE9D),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF69FAD6),
  onPrimaryContainer: Color(0xFF002019),
  secondary: Color(0xFF5E4DBC),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE5DEFF),
  onSecondaryContainer: Color(0xFF1A0063),
  tertiary: Color(0xFF416277),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFC5E7FF),
  onTertiaryContainer: Color(0xFF001E2D),
  error: Color(0xFFD4564F),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  surface: Color(0xFFFAFAFA),
  onSurface: Color(0xFF191C1B),
  surfaceContainerHighest: Color(0xFFDBE5DF),
  onSurfaceVariant: Color(0xFF3F4945),
  outline: Color(0xFF6F7975),
  onInverseSurface: Color(0xFFEFF1EE),
  inverseSurface: Color(0xFF2E312F),
  inversePrimary: Color(0xFF46DDBA),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF006B57),
  outlineVariant: Color(0xFFBFC9C4),
  scrim: Color(0xFF000000),
);

/// Color scheme for the dark theme.
const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF46DDBA),
  onPrimary: Color(0xFF00382C),
  primaryContainer: Color(0xFF005141),
  onPrimaryContainer: Color(0xFF69FAD6),
  secondary: Color(0xFFC8BFFF),
  onSecondary: Color(0xFF2F148C),
  secondaryContainer: Color(0xFF4632A3),
  onSecondaryContainer: Color(0xFFE5DEFF),
  tertiary: Color(0xFFA9CBE3),
  onTertiary: Color(0xFF0E3447),
  tertiaryContainer: Color(0xFF294A5E),
  onTertiaryContainer: Color(0xFFC5E7FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  surface: Color(0xFF191C1B),
  onSurface: Color(0xFFE1E3E0),
  surfaceContainerHighest: Color(0xFF3F4945),
  onSurfaceVariant: Color(0xFFBFC9C4),
  outline: Color(0xFF89938E),
  onInverseSurface: Color(0xFF191C1B),
  inverseSurface: Color(0xFFE1E3E0),
  inversePrimary: Color(0xFF006B57),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF46DDBA),
  outlineVariant: Color(0xFF3F4945),
  scrim: Color(0xFF000000),
);

/// Light theme for the elevated button.
final lightElevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    textStyle: const TextStyle(
      fontSize: 18,
      fontFamily: 'Proxima Nova Semibold',
    ),
    elevation: 1,
    backgroundColor: lightColorScheme.primary,
    foregroundColor: lightColorScheme.onPrimary,
    shadowColor: Colors.transparent,
  ),
);

const _bodySmall = TextStyle(
  fontFamily: 'Lexend Deca',
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);

/// Date picker theme.
final datePickerTheme = DatePickerThemeData(
  todayBackgroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return brandBlue;
    }
    return null;
  }),
  todayForegroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return Colors.white;
    }
    return Colors.black;
  }),
  dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return brandBlue;
    }
    return null;
  }),
  surfaceTintColor: Colors.white,
  confirmButtonStyle: TextButton.styleFrom(
    textStyle: _bodySmall.copyWith(
      fontWeight: FontWeight.w600,
      color: brandBlue,
    ),
  ),
  cancelButtonStyle: TextButton.styleFrom(
    textStyle: _bodySmall.copyWith(
      color: brandBlue,
    ),
  ),
  yearStyle: _bodySmall.copyWith(
    fontWeight: FontWeight.w600,
  ),
  weekdayStyle: _bodySmall.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  headerHeadlineStyle: _bodySmall.copyWith(
    fontSize: 32,
    fontWeight: FontWeight.w600,
  ),
  dayStyle: _bodySmall.copyWith(
    fontWeight: FontWeight.w400,
  ),
  headerHelpStyle: _bodySmall.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  ),
);

/// Modal theme.
final modalTheme = DialogTheme(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  backgroundColor: Colors.white, // Dialog background color
  titleTextStyle: const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black, // Title color
  ),
  contentTextStyle: TextStyle(
    fontSize: 16,
    color: Colors.grey[700], // Content text color
  ),
);

/// Text button theme.
final textButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
    textStyle: const TextStyle(
      fontSize: 18,
      fontFamily: 'Proxima Nova Semibold',
    ),
  ),
);

/// App bar theme used in light theme.
final appBarTheme = AppBarTheme(
  titleTextStyle: textTheme.titleMedium!.copyWith(
    color: lightColorScheme.onSurface,
  ),
);

/// Switch theme.
final switchTheme = SwitchThemeData(
  thumbColor: WidgetStateProperty.all(Colors.white),
  trackColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.disabled)) {
      return Colors.grey.shade300;
    }
    return null;
  }),
  trackOutlineWidth: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)) {
      return 0.0; // No outline when active
    }
    return 0.0; // No outline when inactive
  }),
);

/// App bar theme used in dark theme.
final darkAppBarTheme = AppBarTheme(
  titleTextStyle: textTheme.titleMedium!.copyWith(
    color: darkColorScheme.onSurface,
  ),
);

/// Time picker theme.
final timePickerTheme = TimePickerThemeData(
  backgroundColor: Colors.white,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  helpTextStyle: textTheme.labelLarge,
  padding: const EdgeInsets.only(top: 10, bottom: 15, right: 20, left: 20),
  dayPeriodTextStyle: _bodySmall,
);
