import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scout_ui/scout_ui.dart';

void main() {
  const linearGradient = LinearGradient(
    colors: [
      Colors.red,
      Colors.pink,
    ],
  );
  const topLeftBottomRight = LinearGradient(
    colors: [
      Colors.red,
      Colors.pink,
    ],
  );
  const topCenterBottomCenter = LinearGradient(
    colors: [
      Colors.red,
      Colors.pink,
    ],
  );

  group('Scout gradients', () {
    group('copy with', () {
      test('no new values', () {
        const scoutGradients = ScoutGradients(
          linearGradient: linearGradient,
          topLeftBottomRight: topLeftBottomRight,
          topCenterBottomCenter: topCenterBottomCenter,
        );

        final newScoutGradients = scoutGradients.copyWith();

        expect(newScoutGradients.linearGradient, equals(linearGradient));
        expect(
          newScoutGradients.topLeftBottomRight,
          equals(topLeftBottomRight),
        );
        expect(
          newScoutGradients.topCenterBottomCenter,
          equals(
            topCenterBottomCenter,
          ),
        );
      });

      test('new values', () {
        const scoutGradients = ScoutGradients(
          linearGradient: linearGradient,
          topLeftBottomRight: topLeftBottomRight,
          topCenterBottomCenter: topCenterBottomCenter,
        );

        const newLinearGradient = LinearGradient(
          colors: [
            Colors.black,
            Colors.white,
          ],
        );
        const newTopLeftBottomRight = LinearGradient(
          colors: [
            Colors.black,
            Colors.white,
          ],
        );
        const newTopCenterBottomCenter = LinearGradient(
          colors: [
            Colors.black,
            Colors.white,
          ],
        );
        final newScoutGradients = scoutGradients.copyWith(
          linearGradient: newLinearGradient,
          topCenterBottomCenter: newTopCenterBottomCenter,
          topLeftBottomRight: newTopLeftBottomRight,
        );

        expect(
          newScoutGradients.linearGradient,
          equals(
            newLinearGradient,
          ),
        );
        expect(
          newScoutGradients.topLeftBottomRight,
          equals(
            newTopCenterBottomCenter,
          ),
        );
        expect(
          newScoutGradients.topCenterBottomCenter,
          equals(
            newTopCenterBottomCenter,
          ),
        );
      });
    });

    group('lerp', () {
      test('with no new values', () {
        const newLinearGradient = LinearGradient(
          colors: [
            Colors.black,
            Colors.white,
          ],
        );
        const newTopLeftBottomRight = LinearGradient(
          colors: [
            Colors.black,
            Colors.white,
          ],
        );
        const newTopCenterBottomCenter = LinearGradient(
          colors: [
            Colors.black,
            Colors.white,
          ],
        );
        const scoutGradients = ScoutGradients(
          linearGradient: linearGradient,
          topLeftBottomRight: topLeftBottomRight,
          topCenterBottomCenter: topCenterBottomCenter,
        );

        final lerpGradients = scoutGradients.lerp(
          const ScoutGradients(
            linearGradient: newLinearGradient,
            topLeftBottomRight: newTopLeftBottomRight,
            topCenterBottomCenter: newTopCenterBottomCenter,
          ),
          0.3,
        );

        expect(
          scoutGradients.linearGradient,
          isNot(
            equals(
              lerpGradients.linearGradient,
            ),
          ),
        );

        expect(
          scoutGradients.topLeftBottomRight,
          isNot(
            equals(
              lerpGradients.topLeftBottomRight,
            ),
          ),
        );

        expect(
          scoutGradients.topCenterBottomCenter,
          isNot(
            equals(
              lerpGradients.topCenterBottomCenter,
            ),
          ),
        );
      });
    });
  });
}
