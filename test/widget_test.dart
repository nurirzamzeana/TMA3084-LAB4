import 'package:flutter_test/flutter_test.dart';
import 'package:tma3084_lab4/main.dart';

void main() {
  testWidgets('Pizza Store app starts', (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
  });
}