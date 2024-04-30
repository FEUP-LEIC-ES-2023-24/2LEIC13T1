import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:martechplace/flutter_flow/flutter_flow_icon_button.dart';
import 'package:martechplace/flutter_flow/flutter_flow_widgets.dart';
import 'package:martechplace/flutter_flow/flutter_flow_theme.dart';
import 'package:martechplace/index.dart';
import 'package:martechplace/main.dart';
import 'package:martechplace/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:martechplace/backend/firebase/firebase_config.dart';
import 'package:martechplace/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    _overrideOnError();
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  group('SearchWidgetTesting', () {
    testWidgets('Search Box', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      expect(find.byKey(ValueKey('searchUsersButton')), findsWidgets);
      expect(find.byKey(ValueKey('searchProductsButton')), findsWidgets);
    });

    testWidgets('Search User', (WidgetTester tester) async {
      await tester.pumpWidget(ChangeNotifierProvider(
        create: (context) => FFAppState(),
        child: MyApp(),
      ));

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('searchUsersButton')));
      await tester.pump(kDoubleTapMinTime);
      await tester.tap(find.byKey(ValueKey('searchUsersButton')));
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(ValueKey('SearchBox')), 'Amanda');
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('SearchButton')));
      await tester.pump(kDoubleTapMinTime);
      await tester.tap(find.byKey(ValueKey('SearchButton')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('UserBox')));
      await tester.pump(kDoubleTapMinTime);
      await tester.tap(find.byKey(ValueKey('UserBox')));
    });
  });

  testWidgets('ProfileMenuTest', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    expect(find.byKey(ValueKey('CircleImage_q875')), findsOneWidget);
    await tester.tap(find.byKey(ValueKey('ChatRow')));
    await tester.pumpAndSettle(Duration(milliseconds: 3000));
    expect(find.text('Forgot Password'), findsOneWidget);
  });

  testWidgets('HomePage to LoginPage', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.descendant(
      of: find.byKey(ValueKey('NavBarHome_fjxx')),
      matching: find.descendant(
        of: find.byKey(ValueKey('CustomNavBarHome_4rcq')),
        matching: find.byKey(ValueKey('ProfileButton')),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Sign In'), findsWidgets);
  });

  testWidgets('HomePage to SearchProducts', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('searchProductsButton')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('searchProductsBox')), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
