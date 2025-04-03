// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scout_ui/scout_ui.dart';

extension on WidgetTester {
  Future<void> pumpDialog({
    required VoidCallback onConfirm,
    String title = '',
    Widget content = const Text(''),
    String cancelText = '',
    String confirmText = '',
  }) async {
    await pumpWidget(
      MaterialApp(
        theme: ScoutTheme.light,
        home: Scaffold(
          body: Center(
            child: Builder(
              builder: (context) {
                return ElevatedButton(
                  key: Key('elevated_button_test_key'),
                  onPressed: () {
                    showDialog<bool>(
                      context: context,
                      builder: (context) => StyledConfirmationDialog(
                        title: title,
                        content: content,
                        cancelText: cancelText,
                        confirmText: confirmText,
                        onConfirm: onConfirm,
                      ),
                    );
                  },
                  child: Text('test'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  const defaultTitle = 'Missing payment method';
  final defaultContent = Text(
    'It looks like you haven’t set up a payment method. You need to do so.',
    key: Key('context_test_key'),
  );
  const defaultCancelText = 'Set up it later';
  const defaultConfirmationText = 'Set up it now';

  group('Styled Confirmation dialog', () {
    testWidgets('renders correctly', (tester) async {
      await tester.pumpDialog(
        title: defaultTitle,
        cancelText: defaultCancelText,
        confirmText: defaultConfirmationText,
        content: defaultContent,
        onConfirm: () {},
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('elevated_button_test_key')));

      await tester.pumpAndSettle();

      expect(find.byType(StyledConfirmationDialog), findsOneWidget);

      expect(find.text(defaultTitle), findsOneWidget);
      expect(find.byKey(Key('context_test_key')), findsOneWidget);
      expect(find.text(defaultConfirmationText), findsOneWidget);
      expect(find.text(defaultCancelText), findsOneWidget);
    });

    testWidgets('Tap cancel, closes dialog', (tester) async {
      await tester.pumpDialog(
        title: defaultTitle,
        cancelText: defaultCancelText,
        confirmText: defaultConfirmationText,
        content: defaultContent,
        onConfirm: () {},
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('elevated_button_test_key')));

      await tester.pumpAndSettle();

      expect(find.byType(StyledConfirmationDialog), findsOneWidget);

      await tester.tap(find.text(defaultCancelText));

      await tester.pumpAndSettle();

      expect(find.byType(StyledConfirmationDialog), findsNothing);
    });

    testWidgets('Tap confirm, call callback function', (tester) async {
      var tapped = false;

      await tester.pumpDialog(
        title: defaultTitle,
        cancelText: defaultCancelText,
        confirmText: defaultConfirmationText,
        content: defaultContent,
        onConfirm: () {
          tapped = true;
        },
      );

      await tester.pumpAndSettle();

      await tester.tap(find.byKey(Key('elevated_button_test_key')));

      await tester.pumpAndSettle();

      expect(find.byType(StyledConfirmationDialog), findsOneWidget);

      await tester.tap(find.text(defaultConfirmationText));

      await tester.pumpAndSettle();

      expect(tapped, isTrue);
    });
  });
}
