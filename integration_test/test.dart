import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ascend/flutter_flow/flutter_flow_drop_down.dart';
import 'package:ascend/flutter_flow/flutter_flow_icon_button.dart';
import 'package:ascend/flutter_flow/flutter_flow_widgets.dart';
import 'package:ascend/flutter_flow/flutter_flow_theme.dart';
import 'package:ascend/index.dart';
import 'package:ascend/main.dart';
import 'package:ascend/flutter_flow/flutter_flow_util.dart';

import 'package:ascend/backend/firebase/firebase_config.dart';
import 'package:ascend/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
  });

  testWidgets('US1 User Account Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(const MyApp());
    await GoogleFonts.pendingFonts();

    await tester.enterText(
        find.byKey(const ValueKey('Signup-Email_6bjz')), 'test@uri.edu');
    await tester.enterText(
        find.byKey(const ValueKey('Signup-Password_rkzm')), 'testpassword');
    await tester.enterText(
        find.byKey(const ValueKey('Signup-ConfirmPassword_lv43')),
        'testpassword');
    await tester.tap(find.byKey(const ValueKey('Signup-Button_apc4')));
    await tester.pumpAndSettle(const Duration(milliseconds: 3000));
    expect(find.byKey(const ValueKey('Text_xnlg')), findsWidgets);
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
  // Web-specific error when interacting with TextInputType.emailAddress
  if (error.contains('setSelectionRange') &&
      error.contains('HTMLInputElement')) {
    return true;
  }

  return false;
}
