import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scout_ui/scout_ui.dart';

void main() {
  group('Scout gradient button', () {
    testWidgets(
      'Renders correctly',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            theme: ScoutTheme.light,
            home: Scaffold(
              body: ScoutGradientButton(
                onPressed: () {},
                text: 'Test',
              ),
            ),
          ),
        );

        expect(find.byType(ScoutGradientButton), findsOneWidget);
      },
    );

    testWidgets(
      'Renders disabled correctly',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            theme: ScoutTheme.light,
            home: const Scaffold(
              body: ScoutGradientButton(
                onPressed: null,
                text: 'Test',
              ),
            ),
          ),
        );

        expect(find.byType(ScoutGradientButton), findsOneWidget);
      },
    );

    testWidgets(
      'calls the callback',
      (tester) async {
        var called = false;
        await tester.pumpWidget(
          MaterialApp(
            theme: ScoutTheme.light,
            home: Scaffold(
              body: ScoutGradientButton(
                onPressed: () {
                  called = true;
                },
                text: 'Test',
              ),
            ),
          ),
        );

        await tester.tap(find.text('Test'));
        expect(called, isTrue);
      },
    );
  });
}
