/// UI snapshot shown on the post-checkout success screen.
final class OrderConfirmation {
  const OrderConfirmation({
    required this.orderId,
    required this.orderNumber,
    required this.restaurantName,
    required this.etaMinMinutes,
    required this.etaMaxMinutes,
  });

  final String orderId;
  final String orderNumber;
  final String restaurantName;
  final int etaMinMinutes;
  final int etaMaxMinutes;
}
