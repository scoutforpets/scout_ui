// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scout_ui/src/theme/extensions/scout_text_lexend.dart';

void main() {
  group('Scout Text Lexend', () {
    test('can be instantiated', () {
      const textStyle = TextStyle(color: Colors.red);
      expect(
        ScoutTextLexend(
          headlineL: textStyle,
          headlineM: textStyle,
          headlineS: textStyle,
          bodyStrong: textStyle,
          bodyDefault: textStyle,
          link: textStyle,
          button: textStyle,
          label: textStyle,
          caption: textStyle,
          headlineXl: textStyle,
        ),
        isNotNull,
      );
    });

    test('copy with', () {
      const textStyle = TextStyle(color: Colors.red);
      const textStyle2 = TextStyle(color: Colors.red);

      const textLexend = ScoutTextLexend(
        headlineL: textStyle,
        headlineM: textStyle,
        headlineS: textStyle,
        bodyStrong: textStyle,
        bodyDefault: textStyle,
        link: textStyle,
        button: textStyle,
        label: textStyle,
        caption: textStyle,
        headlineXl: textStyle,
      );

      final noChanges = textLexend.copyWith();

      expect(noChanges.headlineXl, textStyle);
      expect(noChanges.headlineL, textStyle);
      expect(noChanges.headlineM, textStyle);
      expect(noChanges.headlineS, textStyle);
      expect(noChanges.bodyStrong, textStyle);
      expect(noChanges.bodyDefault, textStyle);
      expect(noChanges.link, textStyle);
      expect(noChanges.button, textStyle);
      expect(noChanges.label, textStyle);
      expect(noChanges.caption, textStyle);

      final newTextStyles = textLexend.copyWith(
        headlineL: textStyle2,
        headlineM: textStyle2,
        headlineS: textStyle2,
        bodyStrong: textStyle2,
        bodyDefault: textStyle2,
        link: textStyle2,
        button: textStyle2,
        label: textStyle2,
        caption: textStyle2,
        headlineXl: textStyle2,
      );

      expect(newTextStyles.headlineXl, textStyle2);
      expect(newTextStyles.headlineL, textStyle2);
      expect(newTextStyles.headlineM, textStyle2);
      expect(newTextStyles.headlineS, textStyle2);
      expect(newTextStyles.bodyStrong, textStyle2);
      expect(newTextStyles.bodyDefault, textStyle2);
      expect(newTextStyles.link, textStyle2);
      expect(newTextStyles.button, textStyle2);
      expect(newTextStyles.label, textStyle2);
      expect(newTextStyles.caption, textStyle2);
    });

    test('lerp', () {
      const textStyle2 = TextStyle(color: Colors.red);

      final textLexend = ScoutTextLexend(
        headlineL: textStyle2,
        headlineM: textStyle2,
        headlineS: textStyle2,
        bodyStrong: textStyle2,
        bodyDefault: textStyle2,
        link: textStyle2,
        button: textStyle2,
        label: textStyle2,
        caption: textStyle2,
        headlineXl: textStyle2,
      );

      final lerpInstance = textLexend.lerp(
        textLexend,
        0.5,
      );

      expect(lerpInstance.headlineXl, textStyle2);
      expect(lerpInstance.headlineL, textStyle2);
      expect(lerpInstance.headlineM, textStyle2);
      expect(lerpInstance.headlineS, textStyle2);
      expect(lerpInstance.bodyStrong, textStyle2);
      expect(lerpInstance.bodyDefault, textStyle2);
      expect(lerpInstance.link, textStyle2);
      expect(lerpInstance.button, textStyle2);
      expect(lerpInstance.label, textStyle2);
      expect(lerpInstance.caption, textStyle2);
    });
  });
}
