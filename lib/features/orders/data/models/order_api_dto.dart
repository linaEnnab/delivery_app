import 'package:delivery_app/features/orders/domain/customer_order.dart';
import 'package:delivery_app/features/restaurant/data/utils/api_json_read.dart';
import 'package:delivery_app/shared/domain/value_objects/money.dart';

/// Parses list rows from `GET /api/Order/customer` and details from
/// `GET /api/Order/{id}` (ASP.NET camelCase; [OrderStatus] is numeric).
final class OrderListItemApiDto {
  OrderListItemApiDto._(this._json);

  final Map<String, dynamic> _json;

  factory OrderListItemApiDto.fromDynamic(dynamic data) {
    if (data is Map<String, dynamic>) {
      return OrderListItemApiDto._(data);
    }
    throw const FormatException('Order list item JSON must be an object');
  }

  CustomerOrder toCustomerOrder({String defaultCurrencyCode = 'JOD'}) {
    final j = _json;
    final orderId = readString(j, 'orderId', 'order_id');
    final restaurantId = readString(j, 'restaurantId', 'restaurant_id');
    final placedAt = _readDateTime(j, 'placedAtUtc', 'placed_at_utc') ??
        DateTime.now().toUtc();

    return CustomerOrder(
      id: orderId,
      orderNumber: formatOrderNumber(orderId),
      restaurantId: restaurantId,
      restaurantName: '',
      status: orderStatusFromApi(readInt(j, 'status', 'status')),
      total: Money(
        amount: readDouble(j, 'totalAmount', 'total_amount'),
        currencyCode: defaultCurrencyCode,
      ),
      placedAt: placedAt,
      estimatedArrivalAt: placedAt.add(const Duration(minutes: 35)),
    );
  }
}

final class OrderDetailApiDto {
  OrderDetailApiDto._(this._json);

  final Map<String, dynamic> _json;

  factory OrderDetailApiDto.fromDynamic(dynamic data) {
    if (data is Map<String, dynamic>) {
      return OrderDetailApiDto._(data);
    }
    throw const FormatException('Order detail JSON must be an object');
  }

  CustomerOrder toCustomerOrder({String defaultCurrencyCode = 'JOD'}) {
    final j = _json;
    final orderId = readString(j, 'orderId', 'order_id');
    final restaurantId = readString(j, 'restaurantId', 'restaurant_id');
    final placedAt = _readDateTime(j, 'placedAtUtc', 'placed_at_utc') ??
        DateTime.now().toUtc();
    final deliveredAt = _readDateTime(j, 'deliveredAtUtc', 'delivered_at_utc');
    final pricing = readMap(j, 'pricing', 'pricing');
    final totalAmount = pricing == null
        ? 0.0
        : readDouble(pricing, 'totalAmount', 'total_amount');

    return CustomerOrder(
      id: orderId,
      orderNumber: formatOrderNumber(orderId),
      restaurantId: restaurantId,
      restaurantName: '',
      status: orderStatusFromApi(readInt(j, 'status', 'status')),
      total: Money(amount: totalAmount, currencyCode: defaultCurrencyCode),
      placedAt: placedAt,
      estimatedArrivalAt:
          deliveredAt ?? placedAt.add(const Duration(minutes: 35)),
    );
  }
}

OrderStatus orderStatusFromApi(int value) {
  return switch (value) {
    0 => OrderStatus.pending,
    1 => OrderStatus.restaurantAccepted,
    2 => OrderStatus.preparing,
    3 => OrderStatus.readyForPickup,
    4 => OrderStatus.driverAssigned,
    5 => OrderStatus.pickedUp,
    6 => OrderStatus.onTheWay,
    7 => OrderStatus.delivered,
    8 => OrderStatus.cancelled,
    _ => OrderStatus.pending,
  };
}

String formatOrderNumber(String orderId) {
  final compact = orderId.replaceAll('-', '');
  if (compact.length >= 8) {
    return compact.substring(0, 8).toUpperCase();
  }
  return orderId.toUpperCase();
}

DateTime? _readDateTime(
  Map<String, dynamic> json,
  String camel,
  String snake,
) {
  final raw = readString(json, camel, snake);
  if (raw.isEmpty) return null;
  return DateTime.tryParse(raw)?.toUtc();
}
