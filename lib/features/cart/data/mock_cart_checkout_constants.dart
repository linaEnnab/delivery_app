import 'package:delivery_app/shared/domain/value_objects/money.dart';

/// Mock delivery and discount lines for cart summary (replace with API later).
abstract final class MockCartCheckoutConstants {
  static const Money deliveryFee = Money(amount: 10, currencyCode: 'ILS');

  /// Fixed promotional discount for demo totals.
  static const Money discount = Money(amount: 5, currencyCode: 'ILS');
}
