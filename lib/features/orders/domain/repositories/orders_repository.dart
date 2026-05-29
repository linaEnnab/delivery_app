import 'package:delivery_app/core/utils/result.dart';
import 'package:delivery_app/shared/domain/entities/order.dart';
import 'package:delivery_app/shared/domain/entities/pagination.dart';

/// Order history and details (customer app; future `GET /orders` family).
abstract interface class OrdersRepository {
  Future<Result<PaginatedResult<Order>>> listOrders({
    int page = 1,
    int pageSize = 20,
  });

  Future<Result<Order>> getOrder(String orderId);
}
