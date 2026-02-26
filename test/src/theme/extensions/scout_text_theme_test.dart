// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scout_ui/src/theme/extensions/scout_text_theme.dart';

void main() {
  group('ScoutTextTheme.fromTextTheme', () {
    test('maps Material TextTheme and infers legacy fields', () {
      final material = ThemeData.light().textTheme;

      final stt = ScoutTextTheme.fromTextTheme(material);

      // Standard slots passed through
      expect(stt.displayLarge, material.displayLarge);
      expect(stt.displayMedium, material.displayMedium);
      expect(stt.displaySmall, material.displaySmall);
      expect(stt.headlineLarge, material.headlineLarge);
      expect(stt.headlineMedium, material.headlineMedium);
      expect(stt.headlineSmall, material.headlineSmall);
      expect(stt.titleLarge, material.titleLarge);
      expect(stt.titleMedium, material.titleMedium);
      expect(stt.titleSmall, material.titleSmall);
      expect(stt.bodyLarge, material.bodyLarge);
      expect(stt.bodyMedium, material.bodyMedium);
      expect(stt.bodySmall, material.bodySmall);
      expect(stt.labelLarge, material.labelLarge);
      expect(stt.labelMedium, material.labelMedium);
      expect(stt.labelSmall, material.labelSmall);

      // Legacy fields inferred from Material slots
      expect(stt.headlineXl, material.displayLarge);
      expect(stt.headlineL, material.headlineLarge ?? material.titleLarge);
      expect(stt.headlineM, material.headlineMedium ?? material.titleMedium);
      expect(stt.headlineS, material.headlineSmall ?? material.titleSmall);
      expect(stt.bodyDefault, material.bodyMedium ?? material.bodyLarge);
      // bodyStrong should be bodyLarge with a heavier weight
      expect(stt.bodyStrong?.fontWeight, FontWeight.w600);
      expect(stt.bodyStrong?.fontSize, material.bodyLarge?.fontSize);
      // Link/button/label/caption mappings
      expect(stt.link, material.bodyMedium ?? material.bodyLarge);
      expect(stt.button, material.labelLarge ?? material.titleSmall);
      expect(stt.label, material.labelMedium ?? material.labelLarge);
      expect(stt.caption, material.labelSmall ?? material.bodySmall);
    });

    test('sets bodyStrong to null when bodyLarge is null', () {
      const minimal = TextTheme();
      final stt = ScoutTextTheme.fromTextTheme(minimal);
      expect(stt.bodyStrong, isNull);
    });
  });

  group('ScoutTextTheme.toTextTheme', () {
    test('uses Material slots when provided', () {
      const mat = TextStyle(fontSize: 30);
      const legacy = TextStyle(fontSize: 10);

      final stt = ScoutTextTheme(
        // Legacy
        headlineXl: legacy,
        headlineL: legacy,
        headlineM: legacy,
        headlineS: legacy,
        bodyStrong: legacy,
        bodyDefault: legacy,
        link: legacy,
        button: legacy,
        label: legacy,
        caption: legacy,
        // Material slots present - should be used by toTextTheme
        displayLarge: mat,
        displayMedium: mat,
        displaySmall: mat,
        headlineLarge: mat,
        headlineMedium: mat,
        headlineSmall: mat,
        titleLarge: mat,
        titleMedium: mat,
        titleSmall: mat,
        bodyLarge: mat,
        bodyMedium: mat,
        bodySmall: mat,
        labelLarge: mat,
        labelMedium: mat,
        labelSmall: mat,
      );

      final tt = stt.toTextTheme();

      expect(tt.displayLarge, mat);
      expect(tt.displayMedium, mat);
      expect(tt.displaySmall, mat);
      expect(tt.headlineLarge, mat);
      expect(tt.headlineMedium, mat);
      expect(tt.headlineSmall, mat);
      expect(tt.titleLarge, mat);
      expect(tt.titleMedium, mat);
      expect(tt.titleSmall, mat);
      expect(tt.bodyLarge, mat);
      expect(tt.bodyMedium, mat);
      expect(tt.bodySmall, mat);
      expect(tt.labelLarge, mat);
      expect(tt.labelMedium, mat);
      expect(tt.labelSmall, mat);
    });

    test('falls back to legacy fields when Material slots are null', () {
      const xl = TextStyle(fontSize: 11);
      const l = TextStyle(fontSize: 12);
      const m = TextStyle(fontSize: 13);
      const s = TextStyle(fontSize: 14);
      const strong = TextStyle(fontSize: 15);
      const def = TextStyle(fontSize: 16);
      const cap = TextStyle(fontSize: 17);
      const btn = TextStyle(fontSize: 18);
      const lab = TextStyle(fontSize: 19);

      const stt = ScoutTextTheme(
        // Legacy only
        headlineXl: xl,
        headlineL: l,
        headlineM: m,
        headlineS: s,
        bodyStrong: strong,
        bodyDefault: def,
        link: def,
        button: btn,
        label: lab,
        caption: cap,
      );

      final tt = stt.toTextTheme();

      expect(tt.displayLarge, xl);
      expect(tt.displayMedium, l);
      expect(tt.displaySmall, m);
      expect(tt.headlineLarge, l);
      expect(tt.headlineMedium, m);
      expect(tt.headlineSmall, s);
      expect(tt.titleLarge, s);
      expect(tt.titleMedium, strong);
      expect(tt.titleSmall, def);
      expect(tt.bodyLarge, strong);
      expect(tt.bodyMedium, def);
      expect(tt.bodySmall, cap);
      expect(tt.labelLarge, btn);
      expect(tt.labelMedium, lab);
      expect(tt.labelSmall, cap);
    });
  });

  group('copyWith and lerp (standard fields)', () {
    test('copyWith replaces provided Material slots', () {
      const a = TextStyle(fontSize: 10);
      const b = TextStyle(fontSize: 20);

      final base = ScoutTextTheme(
        headlineXl: a,
        headlineL: a,
        headlineM: a,
        headlineS: a,
        bodyStrong: a,
        bodyDefault: a,
        link: a,
        button: a,
        label: a,
        caption: a,
        displayLarge: a,
      );

      final replaced = base.copyWith(displayLarge: b);
      expect(replaced.displayLarge, b);
      // untouched legacy remains the same
      expect(replaced.headlineXl, a);
    });

    test('lerp returns this when other is null', () {
      final a = ScoutTextTheme(
        headlineXl: const TextStyle(fontSize: 10),
        headlineL: const TextStyle(fontSize: 10),
        headlineM: const TextStyle(fontSize: 10),
        headlineS: const TextStyle(fontSize: 10),
        bodyStrong: const TextStyle(fontSize: 10),
        bodyDefault: const TextStyle(fontSize: 10),
        link: const TextStyle(fontSize: 10),
        button: const TextStyle(fontSize: 10),
        label: const TextStyle(fontSize: 10),
        caption: const TextStyle(fontSize: 10),
        displayLarge: const TextStyle(fontSize: 10),
      );

      final r = a.lerp(null, 0.5);
      expect(identical(r, a), isTrue);
    });

    test('lerp blends Material slot values', () {
      final a = ScoutTextTheme(
        headlineXl: const TextStyle(fontSize: 10),
        headlineL: const TextStyle(fontSize: 10),
        headlineM: const TextStyle(fontSize: 10),
        headlineS: const TextStyle(fontSize: 10),
        bodyStrong: const TextStyle(fontSize: 10),
        bodyDefault: const TextStyle(fontSize: 10),
        link: const TextStyle(fontSize: 10),
        button: const TextStyle(fontSize: 10),
        label: const TextStyle(fontSize: 10),
        caption: const TextStyle(fontSize: 10),
        displayLarge: const TextStyle(fontSize: 10),
      );
      final b = ScoutTextTheme(
        headlineXl: const TextStyle(fontSize: 30),
        headlineL: const TextStyle(fontSize: 30),
        headlineM: const TextStyle(fontSize: 30),
        headlineS: const TextStyle(fontSize: 30),
        bodyStrong: const TextStyle(fontSize: 30),
        bodyDefault: const TextStyle(fontSize: 30),
        link: const TextStyle(fontSize: 30),
        button: const TextStyle(fontSize: 30),
        label: const TextStyle(fontSize: 30),
        caption: const TextStyle(fontSize: 30),
        displayLarge: const TextStyle(fontSize: 30),
      );

      final mid = a.lerp(b, 0.5);
      expect(mid.displayLarge?.fontSize, closeTo(20, 0.001));
    });
  });
}
