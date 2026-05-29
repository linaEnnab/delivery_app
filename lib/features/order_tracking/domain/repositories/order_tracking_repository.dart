import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/order_tracking.dart';

/// Live order tracking (`GET /orders/{id}/tracking`).
abstract interface class OrderTrackingRepository {
  Future<Result<OrderTracking>> getTracking(String orderId);
}
