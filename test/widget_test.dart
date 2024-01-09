// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chap_5_gen_q_5_1_refactoring_a_widget_tree_for_improved_legibility/main.dart';

void main() {
  testWidgets('Refactoring Widget Tree Test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); // Replace with your main app widget
 
    // Test for the presence of the newly created reusable widgets
    expect(find.byType(ReusableButton), findsWidgets); // Replace with your custom widget name
    expect(find.byType(ReusableTextStyle), findsWidgets); // Replace with your custom widget name
 
    // Verify that the reusable widgets are being used in the expected places
    // For instance, checking if ReusableButton is found in a specific part of the app
  });
}
