import 'dart:async';
import 'dart:io';

import 'package:alchemist/alchemist.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scout_ui/scout_ui.dart';

bool get isCI {
  return Platform.environment.containsKey('CI') ||
      Platform.environment.containsKey('CONTINUOUS_INTEGRATION') ||
      Platform.environment.containsKey('BUILD_NUMBER');
}

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  TestWidgetsFlutterBinding.ensureInitialized();

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      // ignore: lines_longer_than_80_chars
      // Using a dark background to better visualize the hover state all components
      theme: ScoutTheme.light,
      platformGoldensConfig: PlatformGoldensConfig(
        // ignore: avoid_redundant_argument_values
        enabled: !isCI,
      ),
    ),
    run: testMain,
  );
}
