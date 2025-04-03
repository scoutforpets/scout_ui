import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scout_ui/scout_ui.dart';

void main() {
  group('Scout button', () {
    testWidgets(
      'Renders correctly',
      (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            theme: ScoutTheme.light,
            home: Scaffold(
              body: Column(
                children: [
                  ScoutButton(
                    onPressed: () {},
                    text: 'Test',
                  ),
                ],
              ),
            ),
          ),
        );

        expect(find.byType(ScoutButton), findsOneWidget);
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
              body: Column(
                children: [
                  ScoutButton(
                    onPressed: () {
                      called = true;
                    },
                    text: 'Test',
                  ),
                ],
              ),
            ),
          ),
        );

        await tester.tap(find.text('Test'));
        expect(called, isTrue);
      },
    );
  });

  group('goldens', () {
    goldenTest(
      'renders correctly',
      fileName: 'scout_button',
      constraints: const BoxConstraints(
        maxWidth: 600,
        maxHeight: 600,
        minWidth: 600,
        minHeight: 600,
      ),
      builder: () {
        return GoldenTestGroup(
          children: [
            GoldenTestScenario(
              name: 'default values',
              child: ScoutButton(
                onPressed: () {},
                text: 'test test test test test test test test test test test',
              ),
            ),
            GoldenTestScenario(
              name: 'Background colors',
              child: ScoutButton(
                onPressed: () {},
                backgroundColor: Colors.red,
                text: 'test test test test test test test test test test test',
              ),
            ),
            GoldenTestScenario(
              name: 'disabled',
              child: const ScoutButton(
                onPressed: null,
                backgroundColor: Colors.red,
                text: 'test test test test test test test test test test test',
              ),
            ),
          ],
        );
      },
    );
  });
}
