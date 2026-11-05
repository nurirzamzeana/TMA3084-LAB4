import 'package:flutter_test/flutter_test.dart';
import 'package:tma3084_lab4/main.dart';

void main() {
  testWidgets('Menu displays all items', (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Fries'), findsOneWidget);
  });

  testWidgets('Tapping menu item opens its screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    expect(
      find.text('A delicious pizza topped with fresh vegetables.'),
      findsOneWidget,
    );
  });

  testWidgets('Back button returns to menu', (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
  });
}