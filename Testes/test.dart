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

  testWidgets('HomePage to LoginPage Test', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('ProfileButton')));
    await tester.pumpAndSettle();
    expect(find.text('Sign In'), findsWidgets);
  });

  testWidgets('HomePage to SignUp test', (WidgetTester tester) async {
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('ProfileButton')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Sign Up'));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('createAccount')), findsOneWidget);
  });

  testWidgets('HomePage to search products', (WidgetTester tester) async {
    _overrideOnError();
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('searchProductsButton')));
    await tester.pumpAndSettle();
    expect(find.text('Search Products'), findsWidgets);
  });

  testWidgets('HomePage to search users', (WidgetTester tester) async {
    _overrideOnError();
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('usersButton')));
    await tester.pumpAndSettle();
    expect(find.text('Search Users'), findsWidgets);
  });

  testWidgets('Create new ad', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'marcelmedeiros2@sapo.pt', password: 'Martechplace123');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));
    await tester.pumpAndSettle();
    await tester.tap(find.text('MarTech'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('CreateAdButton')));
    await tester.pumpAndSettle();
    expect(find.text('Create New Ad'), findsWidgets);
  });

  testWidgets('HomePage to Chats', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'marcelmedeiros2@sapo.pt', password: 'Martechplace123');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('chatsLink')));
    await tester.pumpAndSettle();
    expect(find.text('Chat'), findsWidgets);
  });

  testWidgets('Go to my ads page', (WidgetTester tester) async {
    _overrideOnError();
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: 'marcelmedeiros2@sapo.pt', password: 'Martechplace123');
    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: MyApp(),
    ));

    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('myAdsLink')));
    await tester.pumpAndSettle();
    expect(find.byKey(ValueKey('adsColumn')), findsWidgets);
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
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')|| error.contains('EXCEPTION CAUGHT BY WIDGETS LIBRARY')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
