/// Result of a successful [POST /api/Order].
final class PlacedOrder {
  const PlacedOrder({required this.orderId});

  final String orderId;
}
