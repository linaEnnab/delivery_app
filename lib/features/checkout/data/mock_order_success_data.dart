/// Mock payload for the post-checkout order confirmation screen (no backend).
class MockOrderConfirmation {
  const MockOrderConfirmation({
    required this.orderId,
    required this.orderNumber,
    required this.restaurantName,
    required this.etaMinMinutes,
    required this.etaMaxMinutes,
  });

  /// Stable id for navigation (matches [kMockCustomerOrders] in orders mock).
  final String orderId;
  final String orderNumber;
  final String restaurantName;
  final int etaMinMinutes;
  final int etaMaxMinutes;
}

/// Arabic-first demo values — replace with API response when integrated.
const MockOrderConfirmation kMockOrderConfirmation = MockOrderConfirmation(
  orderId: 'ord-ak-10492',
  orderNumber: 'AK-10492',
  restaurantName: 'مطعم الشام',
  etaMinMinutes: 25,
  etaMaxMinutes: 35,
);
