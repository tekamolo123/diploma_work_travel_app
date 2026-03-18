import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:diploma_work_travel_app/home_page.dart';
import 'package:diploma_work_travel_app/auth_service.dart';

void main() {
  setUp(() {
    AuthService.logout();
  });

  testWidgets('HomePage: empty query shows all tours', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));
    await tester.pumpAndSettle();

    expect(find.text('Морський відпочинок All Inclusive'), findsOneWidget);
    expect(find.text('Європейський вікенд'), findsOneWidget);
    expect(find.text('Гірський релакс'), findsOneWidget);
  });

  testWidgets(
    'HomePage: search is case-insensitive and matches country/city',
    (tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), 'польща');
      await tester.pumpAndSettle();

      expect(find.text('Європейський вікенд'), findsOneWidget);
      expect(find.text('Морський відпочинок All Inclusive'), findsNothing);
      expect(find.text('Гірський релакс'), findsNothing);
    },
  );

  testWidgets('HomePage: shows "Нічого не знайдено" when no matches', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'qwertyzzz');
    await tester.pumpAndSettle();

    expect(find.text('Нічого не знайдено'), findsOneWidget);
  });
}