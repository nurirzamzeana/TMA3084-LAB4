import 'package:flutter_test/flutter_test.dart';
import 'package:tma3084_lab4/order.dart';

void main() {
  group('orderTotal', () {
    test('multiplies unit price by quantity', () {
      expect(orderTotal(unitPrice: 12.5, quantity: 2), 25.0);
    });

    test('returns zero when quantity is zero', () {
      expect(orderTotal(unitPrice: 12.5, quantity: 0), 0.0);
    });

    test('rejects negative quantity', () {
      expect(
        () => orderTotal(unitPrice: 12.5, quantity: -1),
        throwsArgumentError,
      );
    });
  });
}