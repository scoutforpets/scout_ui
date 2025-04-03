import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:scout_ui/src/theme/extensions/scout_colors.dart';

void main() {
  group('Scout colors', () {
    test('can be instantiated', () {
      const color = Color(0x00ff0000);
      expect(
        const ScoutColors(
          scoutGreen: color,
          brandBlue: color,
          loginScreenBackgroundColor: color,
          danger: color,
        ),
        isNotNull,
      );
    });

    test('copy with', () {
      const color = Color(0x00ff0000);
      const color1 = Color(0x00ff0001);
      const color2 = Color(0x00ff0002);
      const color3 = Color(0x00ff0003);
      const color4 = Color(0x00ff0003);

      const scoutColors = ScoutColors(
        scoutGreen: color,
        brandBlue: color,
        loginScreenBackgroundColor: color,
        danger: color4,
      );

      final noChanges = scoutColors.copyWith();

      expect(noChanges.scoutGreen, color);
      expect(noChanges.brandBlue, color);
      expect(noChanges.loginScreenBackgroundColor, color);

      final newScoutColors = scoutColors.copyWith(
        scoutGreen: color1,
        brandBlue: color2,
        loginScreenBackgroundColor: color3,
      );

      expect(newScoutColors.scoutGreen, color1);
      expect(newScoutColors.brandBlue, color2);
      expect(newScoutColors.loginScreenBackgroundColor, color3);
    });

    test('lerp', () {
      const color = Color(0x00ff0000);

      const scoutColors = ScoutColors(
        scoutGreen: color,
        brandBlue: color,
        loginScreenBackgroundColor: color,
        danger: color,
      );

      final lerpScoutColors = scoutColors.lerp(
        scoutColors,
        0.5,
      );

      expect(lerpScoutColors.scoutGreen, color);
      expect(lerpScoutColors.brandBlue, color);
      expect(lerpScoutColors.loginScreenBackgroundColor, color);
    });
  });
}
