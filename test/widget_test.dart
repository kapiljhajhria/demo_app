// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo_app/main.dart';

void main() {
  testWidgets('Does Choose Date Button Exist', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(new MyApp());

    // Verify that our counter starts at 0.
//    expect(find.text('Hello, World!'), findsOneWidget);
    expect(find.text('Get Currency Rates'), findsOneWidget);
    expect(find.text('Choose Date'), findsOneWidget);
//
//    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byType(RaisedButton));
    await tester.pump();
//    await tester.tap(find.byType(FlatButton));
    expect(find.text('OK'), findsOneWidget);

//
//    // Verify that our counter has incremented.
//    expect(find.text('0'), findsNothing);
//    expect(find.text('1'), findsOneWidget);
  });
}
